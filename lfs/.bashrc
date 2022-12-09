source ~lfs/etc/env.sh
set +h
umask 022
LC_ALL=POSIX
PATH=/usr/bin
if [ ! -L /bin ]; then PATH=/bin:$PATH; fi
PATH=$LFS_TOOLS/bin:$PATH
CONFIG_SITE=$LFS/usr/share/config.site
export LFS LC_ALL LFS_TGT PATH CONFIG_SITE
source $HOME/.bash/rc.bash
