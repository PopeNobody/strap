configure() {
 ../configure                  \
     --target=$LFS_TGT         \
     --prefix=$LFS_TOOLS       \
     --with-glibc-version=2.36 \
     --with-sysroot=$LFS       \
     --with-newlib             \
     --without-headers         \
     --disable-nls             \
     --disable-shared          \
     --disable-multilib        \
     --disable-decimal-float   \
     --disable-threads         \
     --disable-libatomic       \
     --disable-libgomp         \
     --disable-libquadmath     \
     --disable-libssp          \
     --disable-libvtv          \
     --disable-libstdcxx       \
     --enable-languages=c,c++
}
