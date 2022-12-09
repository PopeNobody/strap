
copy(){
  mkdir -p ch5/binutils/build
  rsync -Parv -L pkg/binutils ch5/binutils
  cd ch5/binutils/build
}

prep() {
	mkdir -p 
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
