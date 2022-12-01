#!/bin/bash

set -ex

test "$(id -un)" == root
source etc/env.sh
for i in LFS LFS_TOOLS LFS_HOME LFS_TGT; do test -n "${!i}"; done

bash bin/version_check.sh
bash bin/create_base_dirs.sh
bash bin/create_base_dirs.sh
bash bin/create_lfs_user.sh
bash bin/set_lfs_ownership.sh
rsync -Parv $PWD/. ~lfs
chown -R lfs.lfs ~lfs
sudo -u lfs bash -c "source ~/etc/env.sh; cd; bash bin/populate_lfs_home.sh"
