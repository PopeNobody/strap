lib_LTLIBRARIES = libsubid.la
libsubid_la_SOURCES = api.c
libsubid_la_LDFLAGS = -version-info @LIBSUBID_ABI_MAJOR@ -export-symbols-regex '^subid_'

pkginclude_HEADERS = subid.h

MISCLIBS = \
	$(LIBAUDIT) \
	$(LIBSELINUX) \
	$(LIBSEMANAGE) \
	$(LIBCRACK) \
	$(LIBCRYPT_NOPAM) \
	$(LIBSKEY) \
	$(LIBMD) \
	$(LIBECONF) \
	$(LIBCRYPT) \
	$(LIBACL) \
	$(LIBATTR) \
	$(LIBTCB) \
	$(LIBPAM)

libsubid_la_LIBADD = \
	$(top_builddir)/lib/libshadow.la \
	$(top_builddir)/libmisc/libmisc.la \
	$(MISCLIBS) -ldl

AM_CPPFLAGS = \
	-I${top_srcdir}/lib \
	-I${top_srcdir}/libmisc \
	-DLOCALEDIR=\"$(datadir)/locale\"
