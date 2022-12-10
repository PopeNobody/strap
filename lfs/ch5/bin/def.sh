pkg=binutils

copy(){
  mkdir -p ch5/$pkg
  rsync -Parv -L pkg/$pkg ch5/$pkg
  cd ch5/$pkg
}
configure(){
  ./configure --prefix=$LFS_TOOLS
}

