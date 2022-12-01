#!/bin/bash

set -ex
source ~lfs/etc/env.sh
test "$(id -un)" = lfs

cat > ~/.bash_profile << "EOF"
exec env -i HOME=$HOME TERM=$TERM PS1='\u:\w\$ ' /bin/bash -c 'source ~/etc/env.sh; exec bash'
EOF

cat > ~/.bashrc << "EOF"
source ~lfs/etc/env.sh
set +h
umask 022
LC_ALL=POSIX
PATH=/usr/bin
if [ ! -L /bin ]; then PATH=/bin:$PATH; fi
PATH=$LFS_TOOLS/bin:$PATH
CONFIG_SITE=$LFS/usr/share/config.site
export LFS LC_ALL LFS_TGT PATH CONFIG_SITE
EOF
