
copy(){
  rm -fr pkg/binutils
  cp -aR pkg/binutils ch5/binutils
  cd ch5/binutils/build
}

prep() {
	mkdir -p ch5/binutils/build
	cd ch5/binutils/build
	pwd
}

config() {
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

copy
