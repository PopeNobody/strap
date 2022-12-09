#!/bin/bash

# Changes:  added test if user and group exist
#           removed creation of home directory ( -m => -M )
#           removed -k flag, not needed without -m
#           added -d "$LFS/lfs" to set home directory

set -ex
source etc/env.sh
test -n "$LFS"
test "$(id -Gn lfs 2>/dev/null)" == lfs && exit 0

groupadd lfs
useradd -s /bin/bash -d "$LFS_HOME" -g lfs -M lfs
