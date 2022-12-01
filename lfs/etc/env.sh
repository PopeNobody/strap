LFS=/boot
LFS_TOOLS=/boot/strap
LFS_HOME="${LFS_TOOLS}/lfs"
LFS_TGT="$(uname -m)-lfs-linux-gnu"
LFS_VARS=( LFS LFS_TOOLS LFS_HOME LFS_TGT )
PATH="$LFS_TOOLS/bin:$PATH"

export "${LFS_VARS[@]}"

