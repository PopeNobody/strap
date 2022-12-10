set -x -e
copy(){
  rm -fr ch5/binutils
  cp -aR pkg/binutils ch5/binutils
  cd ch5/binutils
}

prep() {
	mkdir -p build
	cd build
	pwd
}

config() {
	pwd
 ../configure --prefix=$LFS_TOOLS \
              --with-sysroot=$LFS \
              --target=$LFS_TGT   \
              --disable-nls       \
              --enable-gprofng=no \
              --disable-werror
}
build() {
	make -j 8
	make install
}

#copy
#prep
#config
#build
