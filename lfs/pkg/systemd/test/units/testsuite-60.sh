#!/usr/bin/env bash
# SPDX-License-Identifier: LGPL-2.1-or-later
set -eux
set -o pipefail

systemd-analyze log-level debug
systemd-analyze log-target journal

NUM_DIRS=20

# make sure we can handle mounts at very long paths such that mount unit name must be hashed to fall within our unit name limit
LONGPATH="$(printf "/$(printf "x%0.s" {1..255})%0.s" {1..7})"
LONGMNT="$(systemd-escape --suffix=mount --path "$LONGPATH")"
TS="$(date '+%H:%M:%S')"

mkdir -p "$LONGPATH"
mount -t tmpfs tmpfs "$LONGPATH"
systemctl daemon-reload

# check that unit is active(mounted)
systemctl --no-pager show -p SubState --value "$LONGPATH" | grep -q mounted

# check that relevant part of journal doesn't contain any errors related to unit
[ "$(journalctl -b --since="$TS" --priority=err | grep -c "$LONGMNT")" = "0" ]

# check that we can successfully stop the mount unit
systemctl stop "$LONGPATH"
rm -rf "$LONGPATH"

# mount/unmount enough times to trigger the /proc/self/mountinfo parsing rate limiting

for ((i = 0; i < NUM_DIRS; i++)); do
    mkdir "/tmp/meow${i}"
done

for ((i = 0; i < NUM_DIRS; i++)); do
    mount -t tmpfs tmpfs "/tmp/meow${i}"
done

systemctl daemon-reload
systemctl list-units -t mount tmp-meow* | grep -q tmp-meow

for ((i = 0; i < NUM_DIRS; i++)); do
    umount "/tmp/meow${i}"
done

# figure out if we have entered the rate limit state

entered_rl=0
exited_rl=0
timeout="$(date -ud "2 minutes" +%s)"
while [[ $(date -u +%s) -le ${timeout} ]]; do
    if journalctl -u init.scope | grep -q "(mount-monitor-dispatch) entered rate limit"; then
        entered_rl=1
        break
    fi
    sleep 5
done

# if the infra is slow we might not enter the rate limit state; in that case skip the exit check

if [ "${entered_rl}" = "1" ]; then
    exited_rl=0
    timeout="$(date -ud "2 minutes" +%s)"
    while [[ $(date -u +%s) -le ${timeout} ]]; do
        if journalctl -u init.scope | grep -q "(mount-monitor-dispatch) left rate limit"; then
            exited_rl=1
            break
        fi
        sleep 5
    done

    if [ "${exited_rl}" = "0" ]; then
        exit 24
    fi
fi

# give some time for units to settle so we don't race between exiting the rate limit state and cleaning up the units

sleep 60
systemctl daemon-reload
sleep 60

# verify that the mount units are always cleaned up at the end

if systemctl list-units -t mount tmp-meow* | grep -q tmp-meow; then
    exit 42
fi

systemd-analyze log-level info

echo OK >/testok

exit 0
