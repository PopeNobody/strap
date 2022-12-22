#!/bin/bash

set -ex

test "$(id -un)" == root
source etc/env.sh
for i in LFS LFS_TOOLS LFS_HOME LFS_TGT; do test -n "${!i}"; done

bin/version_check.sh
bin/create_base_dirs.sh
bin/create_base_dirs.sh
bin/create_lfs_user.sh
bin/set_lfs_ownership.sh
#chown -R lfs.lfs ~lfs
#sudo -u lfs bash -c "source ~/etc/env.sh; cd; bash bin/populate_lfs_home.sh"
