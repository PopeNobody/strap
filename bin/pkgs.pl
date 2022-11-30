{
  'systemd' => {
                 'ver' => '251',
                 'url' => 'https://github.com/systemd/systemd/archive/v251/systemd-251.tar.gz',
                 'pkg' => 'systemd',
                 'art' => '.tar',
                 'md5' => '',
                 'loc' => 'https://github.com/systemd/systemd/archive/v251',
                 'arc' => 'systemd-251.tar.gz',
                 'cmp' => '.gz'
               },
  'systemd-man-pages' => {
                           'md5' => '',
                           'loc' => 'https://anduin.linuxfromscratch.org/LFS',
                           'url' => 'https://anduin.linuxfromscratch.org/LFS/systemd-man-pages-251.tar.xz',
                           'art' => '.tar',
                           'pkg' => 'systemd-man-pages',
                           'cmp' => '.xz',
                           'arc' => 'systemd-man-pages-251.tar.xz',
                           'ver' => '251'
                         },
  'kbd' => {
             'url' => 'https://www.kernel.org/pub/linux/utils/kbd/kbd-2.5.1.tar.xz',
             'art' => '.tar',
             'pkg' => 'kbd',
             'md5' => '10f10c0a9d897807733f2e2419814abb',
             'loc' => 'https://www.kernel.org/pub/linux/utils/kbd',
             'arc' => 'kbd-2.5.1.tar.xz',
             'cmp' => '.xz',
             'ver' => '2.5.1'
           },
  'less' => {
              'md5' => 'f029087448357812fba450091a1172ab',
              'loc' => 'https://www.greenwoodsoftware.com/less',
              'art' => '.tar',
              'url' => 'https://www.greenwoodsoftware.com/less/less-590.tar.gz',
              'pkg' => 'less',
              'cmp' => '.gz',
              'arc' => 'less-590.tar.gz',
              'ver' => '590'
            },
  'libffi' => {
                'loc' => 'https://github.com/libffi/libffi/releases/download/v3.4.2',
                'md5' => '294b921e6cf9ab0fbaea4b639f8fdbe8',
                'url' => 'https://github.com/libffi/libffi/releases/download/v3.4.2/libffi-3.4.2.tar.gz',
                'pkg' => 'libffi',
                'art' => '.tar',
                'cmp' => '.gz',
                'arc' => 'libffi-3.4.2.tar.gz',
                'ver' => '3.4.2'
              },
  'bash' => {
              'ver' => '5.1.16',
              'md5' => 'c17b20a09fc38d67fb303aeb6c130b4e',
              'loc' => 'https://ftp.gnu.org/gnu/bash',
              'art' => '.tar',
              'url' => 'https://ftp.gnu.org/gnu/bash/bash-5.1.16.tar.gz',
              'pkg' => 'bash',
              'cmp' => '.gz',
              'arc' => 'bash-5.1.16.tar.gz'
            },
  'grep' => {
              'ver' => '3.7',
              'cmp' => '.xz',
              'arc' => 'grep-3.7.tar.xz',
              'md5' => '7c9cca97fa18670a21e72638c3e1dabf',
              'loc' => 'https://ftp.gnu.org/gnu/grep',
              'art' => '.tar',
              'url' => 'https://ftp.gnu.org/gnu/grep/grep-3.7.tar.xz',
              'pkg' => 'grep'
            },
  'acl' => {
             'cmp' => '.xz',
             'arc' => 'acl-2.3.1.tar.xz',
             'md5' => '95ce715fe09acca7c12d3306d0f076b2',
             'loc' => 'https://download.savannah.gnu.org/releases/acl',
             'url' => 'https://download.savannah.gnu.org/releases/acl/acl-2.3.1.tar.xz',
             'art' => '.tar',
             'pkg' => 'acl',
             'ver' => '2.3.1'
           },
  'udev-lfs' => {
                  'art' => '.tar',
                  'url' => 'https://anduin.linuxfromscratch.org/LFS/udev-lfs-20171102.tar.xz',
                  'pkg' => 'udev-lfs',
                  'md5' => '27cd82f9a61422e186b9d6759ddf1634',
                  'loc' => 'https://anduin.linuxfromscratch.org/LFS',
                  'arc' => 'udev-lfs-20171102.tar.xz',
                  'cmp' => '.xz',
                  'ver' => '20171102'
                },
  'meson' => {
               'ver' => '0.63.1',
               'cmp' => '.gz',
               'arc' => 'meson-0.63.1.tar.gz',
               'md5' => '078e59d11a72b74c3bd78cb8205e9ed7',
               'loc' => 'https://github.com/mesonbuild/meson/releases/download/0.63.1',
               'art' => '.tar',
               'url' => 'https://github.com/mesonbuild/meson/releases/download/0.63.1/meson-0.63.1.tar.gz',
               'pkg' => 'meson'
             },
  'iproute' => {
                 'cmp' => '.xz',
                 'arc' => 'iproute2-5.19.0.tar.xz',
                 'md5' => '415bd9eeb8515a585e245809d2fe45a6',
                 'loc' => 'https://www.kernel.org/pub/linux/utils/net/iproute2',
                 'url' => 'https://www.kernel.org/pub/linux/utils/net/iproute2/iproute2-5.19.0.tar.xz',
                 'pkg' => 'iproute',
                 'art' => '.tar',
                 'ver' => '2-5.19.0'
               },
  'iana-etc' => {
                  'ver' => '20220812',
                  'md5' => '851a53efd53c77d0ad7b3d2b68d8a3fc',
                  'loc' => 'https://github.com/Mic92/iana-etc/releases/download/20220812',
                  'pkg' => 'iana-etc',
                  'url' => 'https://github.com/Mic92/iana-etc/releases/download/20220812/iana-etc-20220812.tar.gz',
                  'art' => '.tar',
                  'cmp' => '.gz',
                  'arc' => 'iana-etc-20220812.tar.gz'
                },
  'grub' => {
              'pkg' => 'grub',
              'url' => 'https://ftp.gnu.org/gnu/grub/grub-2.06.tar.xz',
              'art' => '.tar',
              'loc' => 'https://ftp.gnu.org/gnu/grub',
              'md5' => 'cf0fd928b1e5479c8108ee52cb114363',
              'arc' => 'grub-2.06.tar.xz',
              'cmp' => '.xz',
              'ver' => '2.06'
            },
  'kmod' => {
              'ver' => '30',
              'cmp' => '.xz',
              'arc' => 'kmod-30.tar.xz',
              'md5' => '85202f0740a75eb52f2163c776f9b564',
              'loc' => 'https://www.kernel.org/pub/linux/utils/kernel/kmod',
              'art' => '.tar',
              'url' => 'https://www.kernel.org/pub/linux/utils/kernel/kmod/kmod-30.tar.xz',
              'pkg' => 'kmod'
            },
  'bzip' => {
              'ver' => '2-1.0.8',
              'cmp' => '.gz',
              'arc' => 'bzip2-1.0.8.tar.gz',
              'loc' => 'https://www.sourceware.org/pub/bzip2',
              'md5' => '67e051268d0c475ea773822f7500d0e5',
              'url' => 'https://www.sourceware.org/pub/bzip2/bzip2-1.0.8.tar.gz',
              'art' => '.tar',
              'pkg' => 'bzip'
            },
  'dejagnu' => {
                 'cmp' => '.gz',
                 'arc' => 'dejagnu-1.6.3.tar.gz',
                 'loc' => 'https://ftp.gnu.org/gnu/dejagnu',
                 'md5' => '68c5208c58236eba447d7d6d1326b821',
                 'url' => 'https://ftp.gnu.org/gnu/dejagnu/dejagnu-1.6.3.tar.gz',
                 'pkg' => 'dejagnu',
                 'art' => '.tar',
                 'ver' => '1.6.3'
               },
  'expat' => {
               'cmp' => '.xz',
               'arc' => 'expat-2.4.8.tar.xz',
               'loc' => 'https://prdownloads.sourceforge.net/expat',
               'md5' => '0584a7318a4c007f7ec94778799d72fe',
               'pkg' => 'expat',
               'url' => 'https://prdownloads.sourceforge.net/expat/expat-2.4.8.tar.xz',
               'art' => '.tar',
               'ver' => '2.4.8'
             },
  'readline' => {
                  'ver' => '8.1.2',
                  'url' => 'https://ftp.gnu.org/gnu/readline/readline-8.1.2.tar.gz',
                  'art' => '.tar',
                  'pkg' => 'readline',
                  'loc' => 'https://ftp.gnu.org/gnu/readline',
                  'md5' => '12819fa739a78a6172400f399ab34f81',
                  'arc' => 'readline-8.1.2.tar.gz',
                  'cmp' => '.gz'
                },
  'xz' => {
            'ver' => '5.2.6',
            'md5' => 'd9cd5698e1ec06cf638c0d2d645e8175',
            'loc' => 'https://tukaani.org/xz',
            'url' => 'https://tukaani.org/xz/xz-5.2.6.tar.xz',
            'pkg' => 'xz',
            'art' => '.tar',
            'cmp' => '.xz',
            'arc' => 'xz-5.2.6.tar.xz'
          },
  'shadow' => {
                'cmp' => '.xz',
                'arc' => 'shadow-4.12.2.tar.xz',
                'md5' => '52637cb34c357acf85c617cf95da34a6',
                'loc' => 'https://github.com/shadow-maint/shadow/releases/download/4.12.2',
                'url' => 'https://github.com/shadow-maint/shadow/releases/download/4.12.2/shadow-4.12.2.tar.xz',
                'art' => '.tar',
                'pkg' => 'shadow',
                'ver' => '4.12.2'
              },
  'tcl' => {
             'ver' => '8.6.12-html',
             'cmp' => '.gz',
             'arc' => 'tcl8.6.12-html.tar.gz',
             'loc' => 'https://downloads.sourceforge.net/tcl',
             'md5' => 'a0d1a5b60bbb68f2f0bd3066a19c527a',
             'url' => 'https://downloads.sourceforge.net/tcl/tcl8.6.12-html.tar.gz',
             'art' => '.tar',
             'pkg' => 'tcl'
           },
  'Python' => {
                'ver' => '3.10.6',
                'url' => 'https://www.python.org/ftp/python/3.10.6/Python-3.10.6.tar.xz',
                'pkg' => 'Python',
                'art' => '.tar',
                'md5' => 'afc7e14f7118d10d1ba95ae8e2134bf0',
                'loc' => 'https://www.python.org/ftp/python/3.10.6',
                'arc' => 'Python-3.10.6.tar.xz',
                'cmp' => '.xz'
              },
  'sed' => {
             'ver' => '4.8',
             'url' => 'https://ftp.gnu.org/gnu/sed/sed-4.8.tar.xz',
             'pkg' => 'sed',
             'art' => '.tar',
             'md5' => '6d906edfdb3202304059233f51f9a71d',
             'loc' => 'https://ftp.gnu.org/gnu/sed',
             'arc' => 'sed-4.8.tar.xz',
             'cmp' => '.xz'
           },
  'mpfr' => {
              'ver' => '4.1.0',
              'url' => 'https://ftp.gnu.org/gnu/mpfr/mpfr-4.1.0.tar.xz',
              'art' => '.tar',
              'pkg' => 'mpfr',
              'md5' => 'bdd3d5efba9c17da8d83a35ec552baef',
              'loc' => 'https://ftp.gnu.org/gnu/mpfr',
              'arc' => 'mpfr-4.1.0.tar.xz',
              'cmp' => '.xz'
            },
  'tzdata' => {
                'ver' => '2022c',
                'url' => 'https://www.iana.org/time-zones/repository/releases/tzdata2022c.tar.gz',
                'pkg' => 'tzdata',
                'art' => '.tar',
                'loc' => 'https://www.iana.org/time-zones/repository/releases',
                'md5' => '4e3b2369b68e713ba5d3f7456f20bfdb',
                'arc' => 'tzdata2022c.tar.gz',
                'cmp' => '.gz'
              },
  'libpipeline' => {
                     'ver' => '1.5.6',
                     'arc' => 'libpipeline-1.5.6.tar.gz',
                     'cmp' => '.gz',
                     'url' => 'https://download.savannah.gnu.org/releases/libpipeline/libpipeline-1.5.6.tar.gz',
                     'art' => '.tar',
                     'pkg' => 'libpipeline',
                     'md5' => '829c9ba46382b0b3e12dd11fcbc1bb27',
                     'loc' => 'https://download.savannah.gnu.org/releases/libpipeline'
                   },
  'linux' => {
               'arc' => 'linux-5.19.2.tar.xz',
               'cmp' => '.xz',
               'art' => '.tar',
               'url' => 'https://www.kernel.org/pub/linux/kernel/v5.x/linux-5.19.2.tar.xz',
               'pkg' => 'linux',
               'loc' => 'https://www.kernel.org/pub/linux/kernel/v5.x',
               'md5' => '391274e2e49a881403b0ff2e0712bf82',
               'ver' => '5.19.2'
             },
  'patch' => {
               'md5' => '78ad9937e4caadcba1526ef1853730d5',
               'loc' => 'https://ftp.gnu.org/gnu/patch',
               'url' => 'https://ftp.gnu.org/gnu/patch/patch-2.7.6.tar.xz',
               'art' => '.tar',
               'pkg' => 'patch',
               'cmp' => '.xz',
               'arc' => 'patch-2.7.6.tar.xz',
               'ver' => '2.7.6'
             },
  'python' => {
                'ver' => '3.10.6-docs-html',
                'loc' => 'https://www.python.org/ftp/python/doc/3.10.6',
                'md5' => '8f32c4f4f0b18ec56e8b3822bbaeb017',
                'pkg' => 'python',
                'url' => 'https://www.python.org/ftp/python/doc/3.10.6/python-3.10.6-docs-html.tar.bz2',
                'art' => '.tar',
                'cmp' => '.bz2',
                'arc' => 'python-3.10.6-docs-html.tar.bz2'
              },
  'coreutils' => {
                   'cmp' => '.xz',
                   'arc' => 'coreutils-9.1.tar.xz',
                   'md5' => '8b1ca4e018a7dce9bb937faec6618671',
                   'loc' => 'https://ftp.gnu.org/gnu/coreutils',
                   'art' => '.tar',
                   'url' => 'https://ftp.gnu.org/gnu/coreutils/coreutils-9.1.tar.xz',
                   'pkg' => 'coreutils',
                   'ver' => '9.1'
                 },
  'util-linux' => {
                    'ver' => '2.38.1',
                    'cmp' => '.xz',
                    'arc' => 'util-linux-2.38.1.tar.xz',
                    'md5' => 'cd11456f4ddd31f7fbfdd9488c0c0d02',
                    'loc' => 'https://www.kernel.org/pub/linux/utils/util-linux/v2.38',
                    'pkg' => 'util-linux',
                    'url' => 'https://www.kernel.org/pub/linux/utils/util-linux/v2.38/util-linux-2.38.1.tar.xz',
                    'art' => '.tar'
                  },
  'elfutils' => {
                  'ver' => '0.187',
                  'url' => 'https://sourceware.org/ftp/elfutils/0.187/elfutils-0.187.tar.bz2',
                  'art' => '.tar',
                  'pkg' => 'elfutils',
                  'loc' => 'https://sourceware.org/ftp/elfutils/0.187',
                  'md5' => 'cc04f07b53a71616b22553c0a458cf4b',
                  'arc' => 'elfutils-0.187.tar.bz2',
                  'cmp' => '.bz2'
                },
  'inetutils' => {
                   'ver' => '2.3',
                   'cmp' => '.xz',
                   'arc' => 'inetutils-2.3.tar.xz',
                   'md5' => 'e73e2ed42d73ceb47616b20131236036',
                   'loc' => 'https://ftp.gnu.org/gnu/inetutils',
                   'pkg' => 'inetutils',
                   'url' => 'https://ftp.gnu.org/gnu/inetutils/inetutils-2.3.tar.xz',
                   'art' => '.tar'
                 },
  'wheel' => {
               'ver' => '0.37.1',
               'cmp' => '.gz',
               'arc' => 'wheel-0.37.1.tar.gz',
               'loc' => 'https://anduin.linuxfromscratch.org/LFS',
               'md5' => 'f490f1399e5903706cb1d4fbed9ecb28',
               'pkg' => 'wheel',
               'url' => 'https://anduin.linuxfromscratch.org/LFS/wheel-0.37.1.tar.gz',
               'art' => '.tar'
             },
  'openssl' => {
                 'ver' => '3.0.5',
                 'cmp' => '.gz',
                 'arc' => 'openssl-3.0.5.tar.gz',
                 'loc' => 'https://www.openssl.org/source',
                 'md5' => '163bb3e58c143793d1dc6a6ec7d185d5',
                 'url' => 'https://www.openssl.org/source/openssl-3.0.5.tar.gz',
                 'art' => '.tar',
                 'pkg' => 'openssl'
               },
  'ninja' => {
               'cmp' => '.gz',
               'arc' => 'ninja-1.11.0.tar.gz',
               'loc' => 'https://github.com/ninja-build/ninja/archive/v1.11.0',
               'md5' => '7d1a1a2f5cdc06795b3054df5c17d5ef',
               'url' => 'https://github.com/ninja-build/ninja/archive/v1.11.0/ninja-1.11.0.tar.gz',
               'pkg' => 'ninja',
               'art' => '.tar',
               'ver' => '1.11.0'
             },
  'gettext' => {
                 'ver' => '0.21',
                 'md5' => '40996bbaf7d1356d3c22e33a8b255b31',
                 'loc' => 'https://ftp.gnu.org/gnu/gettext',
                 'art' => '.tar',
                 'url' => 'https://ftp.gnu.org/gnu/gettext/gettext-0.21.tar.xz',
                 'pkg' => 'gettext',
                 'cmp' => '.xz',
                 'arc' => 'gettext-0.21.tar.xz'
               },
  'libcap' => {
                'md5' => '3543e753dd941255c4def6cc67a462bb',
                'loc' => 'https://www.kernel.org/pub/linux/libs/security/linux-privs/libcap2',
                'pkg' => 'libcap',
                'url' => 'https://www.kernel.org/pub/linux/libs/security/linux-privs/libcap2/libcap-2.65.tar.xz',
                'art' => '.tar',
                'cmp' => '.xz',
                'arc' => 'libcap-2.65.tar.xz',
                'ver' => '2.65'
              },
  'diffutils' => {
                   'ver' => '3.8',
                   'arc' => 'diffutils-3.8.tar.xz',
                   'cmp' => '.xz',
                   'art' => '.tar',
                   'url' => 'https://ftp.gnu.org/gnu/diffutils/diffutils-3.8.tar.xz',
                   'pkg' => 'diffutils',
                   'loc' => 'https://ftp.gnu.org/gnu/diffutils',
                   'md5' => '6a6b0fdc72acfe3f2829aab477876fbc'
                 },
  'gdbm' => {
              'ver' => '1.23',
              'cmp' => '.gz',
              'arc' => 'gdbm-1.23.tar.gz',
              'loc' => 'https://ftp.gnu.org/gnu/gdbm',
              'md5' => '8551961e36bf8c70b7500d255d3658ec',
              'url' => 'https://ftp.gnu.org/gnu/gdbm/gdbm-1.23.tar.gz',
              'art' => '.tar',
              'pkg' => 'gdbm'
            },
  'binutils' => {
                  'ver' => '2.39',
                  'art' => '.tar',
                  'url' => 'https://ftp.gnu.org/gnu/binutils/binutils-2.39.tar.xz',
                  'pkg' => 'binutils',
                  'md5' => 'f7e986ae9ff06405cafb2e585ee36d27',
                  'loc' => 'https://ftp.gnu.org/gnu/binutils',
                  'arc' => 'binutils-2.39.tar.xz',
                  'cmp' => '.xz'
                },
  'gperf' => {
               'loc' => 'https://ftp.gnu.org/gnu/gperf',
               'md5' => '9e251c0a618ad0824b51117d5d9db87e',
               'url' => 'https://ftp.gnu.org/gnu/gperf/gperf-3.1.tar.gz',
               'art' => '.tar',
               'pkg' => 'gperf',
               'cmp' => '.gz',
               'arc' => 'gperf-3.1.tar.gz',
               'ver' => '3.1'
             },
  'findutils' => {
                   'cmp' => '.xz',
                   'arc' => 'findutils-4.9.0.tar.xz',
                   'loc' => 'https://ftp.gnu.org/gnu/findutils',
                   'md5' => '4a4a547e888a944b2f3af31d789a1137',
                   'art' => '.tar',
                   'url' => 'https://ftp.gnu.org/gnu/findutils/findutils-4.9.0.tar.xz',
                   'pkg' => 'findutils',
                   'ver' => '4.9.0'
                 },
  'automake' => {
                  'cmp' => '.xz',
                  'arc' => 'automake-1.16.5.tar.xz',
                  'md5' => '4017e96f89fca45ca946f1c5db6be714',
                  'loc' => 'https://ftp.gnu.org/gnu/automake',
                  'art' => '.tar',
                  'url' => 'https://ftp.gnu.org/gnu/automake/automake-1.16.5.tar.xz',
                  'pkg' => 'automake',
                  'ver' => '1.16.5'
                },
  'gawk' => {
              'cmp' => '.xz',
              'arc' => 'gawk-5.1.1.tar.xz',
              'loc' => 'https://ftp.gnu.org/gnu/gawk',
              'md5' => '83650aa943ff2fd519b2abedf8506ace',
              'pkg' => 'gawk',
              'url' => 'https://ftp.gnu.org/gnu/gawk/gawk-5.1.1.tar.xz',
              'art' => '.tar',
              'ver' => '5.1.1'
            },
  'make' => {
              'ver' => '4.3',
              'arc' => 'make-4.3.tar.gz',
              'cmp' => '.gz',
              'url' => 'https://ftp.gnu.org/gnu/make/make-4.3.tar.gz',
              'art' => '.tar',
              'pkg' => 'make',
              'md5' => 'fc7a67ea86ace13195b0bce683fd4469',
              'loc' => 'https://ftp.gnu.org/gnu/make'
            },
  'tar' => {
             'ver' => '1.34',
             'arc' => 'tar-1.34.tar.xz',
             'cmp' => '.xz',
             'url' => 'https://ftp.gnu.org/gnu/tar/tar-1.34.tar.xz',
             'art' => '.tar',
             'pkg' => 'tar',
             'md5' => '9a08d29a9ac4727130b5708347c0f5cf',
             'loc' => 'https://ftp.gnu.org/gnu/tar'
           },
  'ncurses' => {
                 'arc' => 'ncurses-6.3.tar.gz',
                 'cmp' => '.gz',
                 'url' => 'https://invisible-mirror.net/archives/ncurses/ncurses-6.3.tar.gz',
                 'art' => '.tar',
                 'pkg' => 'ncurses',
                 'md5' => 'a2736befde5fee7d2b7eb45eb281cdbe',
                 'loc' => 'https://invisible-mirror.net/archives/ncurses',
                 'ver' => '6.3'
               },
  'zlib' => {
              'ver' => '1.2.12',
              'md5' => '28687d676c04e7103bb6ff2b9694c471',
              'loc' => 'https://zlib.net',
              'url' => 'https://zlib.net/zlib-1.2.12.tar.xz',
              'pkg' => 'zlib',
              'art' => '.tar',
              'cmp' => '.xz',
              'arc' => 'zlib-1.2.12.tar.xz'
            },
  'mpc' => {
             'arc' => 'mpc-1.2.1.tar.gz',
             'cmp' => '.gz',
             'art' => '.tar',
             'url' => 'https://ftp.gnu.org/gnu/mpc/mpc-1.2.1.tar.gz',
             'pkg' => 'mpc',
             'md5' => '9f16c976c25bb0f76b50be749cd7a3a8',
             'loc' => 'https://ftp.gnu.org/gnu/mpc',
             'ver' => '1.2.1'
           },
  'check' => {
               'ver' => '0.15.2',
               'arc' => 'check-0.15.2.tar.gz',
               'cmp' => '.gz',
               'art' => '.tar',
               'url' => 'https://github.com/libcheck/check/releases/download/0.15.2/check-0.15.2.tar.gz',
               'pkg' => 'check',
               'md5' => '50fcafcecde5a380415b12e9c574e0b2',
               'loc' => 'https://github.com/libcheck/check/releases/download/0.15.2'
             },
  'glibc' => {
               'ver' => '2.36',
               'md5' => '00e9b89e043340f688bc93ec03239b57',
               'loc' => 'https://ftp.gnu.org/gnu/glibc',
               'pkg' => 'glibc',
               'url' => 'https://ftp.gnu.org/gnu/glibc/glibc-2.36.tar.xz',
               'art' => '.tar',
               'cmp' => '.xz',
               'arc' => 'glibc-2.36.tar.xz'
             },
  'file' => {
              'ver' => '5.42',
              'arc' => 'file-5.42.tar.gz',
              'cmp' => '.gz',
              'pkg' => 'file',
              'url' => 'https://astron.com/pub/file/file-5.42.tar.gz',
              'art' => '.tar',
              'loc' => 'https://astron.com/pub/file',
              'md5' => '4d4f70c3b08a8a70d8baf67f085d7e92'
            },
  'flex' => {
              'ver' => '2.6.4',
              'cmp' => '.gz',
              'arc' => 'flex-2.6.4.tar.gz',
              'md5' => '2882e3179748cc9f9c23ec593d6adc8d',
              'loc' => 'https://github.com/westes/flex/releases/download/v2.6.4',
              'art' => '.tar',
              'url' => 'https://github.com/westes/flex/releases/download/v2.6.4/flex-2.6.4.tar.gz',
              'pkg' => 'flex'
            },
  'autoconf' => {
                  'md5' => '12cfa1687ffa2606337efe1a64416106',
                  'loc' => 'https://ftp.gnu.org/gnu/autoconf',
                  'url' => 'https://ftp.gnu.org/gnu/autoconf/autoconf-2.71.tar.xz',
                  'pkg' => 'autoconf',
                  'art' => '.tar',
                  'cmp' => '.xz',
                  'arc' => 'autoconf-2.71.tar.xz',
                  'ver' => '2.71'
                },
  'perl' => {
              'ver' => '5.36.0',
              'url' => 'https://www.cpan.org/src/5.0/perl-5.36.0.tar.xz',
              'art' => '.tar',
              'pkg' => 'perl',
              'loc' => 'https://www.cpan.org/src/5.0',
              'md5' => '826e42da130011699172fd655e49cfa2',
              'arc' => 'perl-5.36.0.tar.xz',
              'cmp' => '.xz'
            },
  'bison' => {
               'ver' => '3.8.2',
               'arc' => 'bison-3.8.2.tar.xz',
               'cmp' => '.xz',
               'url' => 'https://ftp.gnu.org/gnu/bison/bison-3.8.2.tar.xz',
               'pkg' => 'bison',
               'art' => '.tar',
               'loc' => 'https://ftp.gnu.org/gnu/bison',
               'md5' => 'c28f119f405a2304ff0a7ccdcc629713'
             },
  'texinfo' => {
                 'ver' => '6.8',
                 'arc' => 'texinfo-6.8.tar.xz',
                 'cmp' => '.xz',
                 'url' => 'https://ftp.gnu.org/gnu/texinfo/texinfo-6.8.tar.xz',
                 'pkg' => 'texinfo',
                 'art' => '.tar',
                 'md5' => 'a91b404e30561a5df803e6eb3a53be71',
                 'loc' => 'https://ftp.gnu.org/gnu/texinfo'
               },
  'libtool' => {
                 'ver' => '2.4.7',
                 'loc' => 'https://ftp.gnu.org/gnu/libtool',
                 'md5' => '2fc0b6ddcd66a89ed6e45db28fa44232',
                 'art' => '.tar',
                 'url' => 'https://ftp.gnu.org/gnu/libtool/libtool-2.4.7.tar.xz',
                 'pkg' => 'libtool',
                 'cmp' => '.xz',
                 'arc' => 'libtool-2.4.7.tar.xz'
               },
  'gmp' => {
             'arc' => 'gmp-6.2.1.tar.xz',
             'cmp' => '.xz',
             'url' => 'https://ftp.gnu.org/gnu/gmp/gmp-6.2.1.tar.xz',
             'pkg' => 'gmp',
             'art' => '.tar',
             'loc' => 'https://ftp.gnu.org/gnu/gmp',
             'md5' => '0b82665c4a92fd2ade7440c13fcaa42b',
             'ver' => '6.2.1'
           },
  'sysklogd' => {
                  'ver' => '1.5.1',
                  'url' => 'https://www.infodrom.org/projects/sysklogd/download/sysklogd-1.5.1.tar.gz',
                  'art' => '.tar',
                  'pkg' => 'sysklogd',
                  'loc' => 'https://www.infodrom.org/projects/sysklogd/download',
                  'md5' => 'c70599ab0d037fde724f7210c2c8d7f8',
                  'arc' => 'sysklogd-1.5.1.tar.gz',
                  'cmp' => '.gz'
                },
  'attr' => {
              'cmp' => '.gz',
              'arc' => 'attr-2.5.1.tar.gz',
              'loc' => 'https://download.savannah.gnu.org/releases/attr',
              'md5' => 'ac1c5a7a084f0f83b8cace34211f64d8',
              'art' => '.tar',
              'url' => 'https://download.savannah.gnu.org/releases/attr/attr-2.5.1.tar.gz',
              'pkg' => 'attr',
              'ver' => '2.5.1'
            },
  'psmisc' => {
                'loc' => 'https://sourceforge.net/projects/psmisc/files/psmisc',
                'md5' => '014f0b5d5ab32478a2c57812ad01e1fb',
                'art' => '.tar',
                'url' => 'https://sourceforge.net/projects/psmisc/files/psmisc/psmisc-23.5.tar.xz',
                'pkg' => 'psmisc',
                'cmp' => '.xz',
                'arc' => 'psmisc-23.5.tar.xz',
                'ver' => '23.5'
              },
  'Jinja' => {
               'md5' => '',
               'loc' => 'https://files.pythonhosted.org/packages/source/J/Jinja2',
               'url' => 'https://files.pythonhosted.org/packages/source/J/Jinja2/Jinja2-3.1.2.tar.gz',
               'art' => '.tar',
               'pkg' => 'Jinja',
               'cmp' => '.gz',
               'arc' => 'Jinja2-3.1.2.tar.gz',
               'ver' => '2-3.1.2'
             },
  'vim' => {
             'loc' => 'https://anduin.linuxfromscratch.org/LFS',
             'md5' => 'bc7e0a4829d94bb4c03a7a6b4ad6a8cf',
             'url' => 'https://anduin.linuxfromscratch.org/LFS/vim-9.0.0228.tar.gz',
             'pkg' => 'vim',
             'art' => '.tar',
             'cmp' => '.gz',
             'arc' => 'vim-9.0.0228.tar.gz',
             'ver' => '9.0.0228'
           },
  'MarkupSafe' => {
                    'ver' => '2.1.1',
                    'arc' => 'MarkupSafe-2.1.1.tar.gz',
                    'cmp' => '.gz',
                    'url' => 'https://files.pythonhosted.org/packages/source/M/MarkupSafe/MarkupSafe-2.1.1.tar.gz',
                    'art' => '.tar',
                    'pkg' => 'MarkupSafe',
                    'loc' => 'https://files.pythonhosted.org/packages/source/M/MarkupSafe',
                    'md5' => ''
                  },
  'procps-ng' => {
                   'ver' => '4.0.0',
                   'cmp' => '.xz',
                   'arc' => 'procps-ng-4.0.0.tar.xz',
                   'md5' => 'eedf93f2f6083afb7abf72188018e1e5',
                   'loc' => 'https://sourceforge.net/projects/procps-ng/files/Production',
                   'pkg' => 'procps-ng',
                   'url' => 'https://sourceforge.net/projects/procps-ng/files/Production/procps-ng-4.0.0.tar.xz',
                   'art' => '.tar'
                 },
  'expect' => {
                'ver' => '5.45.4',
                'art' => '.tar',
                'url' => 'https://prdownloads.sourceforge.net/expect/expect5.45.4.tar.gz',
                'pkg' => 'expect',
                'loc' => 'https://prdownloads.sourceforge.net/expect',
                'md5' => '00fce8de158422f5ccd2666512329bd2',
                'arc' => 'expect5.45.4.tar.gz',
                'cmp' => '.gz'
              },
  'groff' => {
               'ver' => '1.22.4',
               'loc' => 'https://ftp.gnu.org/gnu/groff',
               'md5' => '08fb04335e2f5e73f23ea4c3adbf0c5f',
               'art' => '.tar',
               'url' => 'https://ftp.gnu.org/gnu/groff/groff-1.22.4.tar.gz',
               'pkg' => 'groff',
               'cmp' => '.gz',
               'arc' => 'groff-1.22.4.tar.gz'
             },
  'dbus' => {
              'ver' => '1.14.0',
              'pkg' => 'dbus',
              'url' => 'https://dbus.freedesktop.org/releases/dbus/dbus-1.14.0.tar.xz',
              'art' => '.tar',
              'loc' => 'https://dbus.freedesktop.org/releases/dbus',
              'md5' => '',
              'arc' => 'dbus-1.14.0.tar.xz',
              'cmp' => '.xz'
            },
  'gcc' => {
             'ver' => '12.2.0',
             'arc' => 'gcc-12.2.0.tar.xz',
             'cmp' => '.xz',
             'art' => '.tar',
             'url' => 'https://ftp.gnu.org/gnu/gcc/gcc-12.2.0/gcc-12.2.0.tar.xz',
             'pkg' => 'gcc',
             'loc' => 'https://ftp.gnu.org/gnu/gcc/gcc-12.2.0',
             'md5' => '73bafd0af874439dcdb9fc063b6fb069'
           },
  'intltool' => {
                  'ver' => '0.51.0',
                  'art' => '.tar',
                  'url' => 'https://launchpad.net/intltool/trunk/0.51.0/+download/intltool-0.51.0.tar.gz',
                  'pkg' => 'intltool',
                  'md5' => '12e517cac2b57a0121cda351570f1e63',
                  'loc' => 'https://launchpad.net/intltool/trunk/0.51.0/+download',
                  'arc' => 'intltool-0.51.0.tar.gz',
                  'cmp' => '.gz'
                },
  'XML-Parser' => {
                    'ver' => '2.46',
                    'loc' => 'https://cpan.metacpan.org/authors/id/T/TO/TODDR',
                    'md5' => '80bb18a8e6240fcf7ec2f7b57601c170',
                    'url' => 'https://cpan.metacpan.org/authors/id/T/TO/TODDR/XML-Parser-2.46.tar.gz',
                    'art' => '.tar',
                    'pkg' => 'XML-Parser',
                    'cmp' => '.gz',
                    'arc' => 'XML-Parser-2.46.tar.gz'
                  },
  'man-pages' => {
                   'ver' => '5.13',
                   'cmp' => '.xz',
                   'arc' => 'man-pages-5.13.tar.xz',
                   'loc' => 'https://www.kernel.org/pub/linux/docs/man-pages',
                   'md5' => '3ac24e8c6fae26b801cb87ceb63c0a30',
                   'art' => '.tar',
                   'url' => 'https://www.kernel.org/pub/linux/docs/man-pages/man-pages-5.13.tar.xz',
                   'pkg' => 'man-pages'
                 },
  'man-db' => {
                'ver' => '2.10.2',
                'art' => '.tar',
                'url' => 'https://download.savannah.gnu.org/releases/man-db/man-db-2.10.2.tar.xz',
                'pkg' => 'man-db',
                'md5' => 'e327f7af3786d15e5851658ae7ef47ed',
                'loc' => 'https://download.savannah.gnu.org/releases/man-db',
                'arc' => 'man-db-2.10.2.tar.xz',
                'cmp' => '.xz'
              },
  'bc' => {
            'arc' => 'bc-6.0.1.tar.xz',
            'cmp' => '.xz',
            'url' => 'https://github.com/gavinhoward/bc/releases/download/6.0.1/bc-6.0.1.tar.xz',
            'pkg' => 'bc',
            'art' => '.tar',
            'loc' => 'https://github.com/gavinhoward/bc/releases/download/6.0.1',
            'md5' => '4c8b8d51eb52ee66f5bcf6a6a1ca576e',
            'ver' => '6.0.1'
          },
  'lfs-bootscripts' => {
                         'arc' => 'lfs-bootscripts-20220723.tar.xz',
                         'cmp' => '.xz',
                         'pkg' => 'lfs-bootscripts',
                         'url' => 'https://www.linuxfromscratch.org/lfs/downloads/11.2/lfs-bootscripts-20220723.tar.xz',
                         'art' => '.tar',
                         'loc' => 'https://www.linuxfromscratch.org/lfs/downloads/11.2',
                         'md5' => '74884d0d91616f843599c99a333666da',
                         'ver' => '20220723'
                       },
  'pkg-config' => {
                    'loc' => 'https://pkg-config.freedesktop.org/releases',
                    'md5' => 'f6e931e319531b736fadc017f470e68a',
                    'pkg' => 'pkg-config',
                    'url' => 'https://pkg-config.freedesktop.org/releases/pkg-config-0.29.2.tar.gz',
                    'art' => '.tar',
                    'cmp' => '.gz',
                    'arc' => 'pkg-config-0.29.2.tar.gz',
                    'ver' => '0.29.2'
                  },
  'm' => {
           'art' => '.tar',
           'url' => 'https://ftp.gnu.org/gnu/m4/m4-1.4.19.tar.xz',
           'pkg' => 'm',
           'loc' => 'https://ftp.gnu.org/gnu/m4',
           'md5' => '0d90823e1426f1da2fd872df0311298d',
           'arc' => 'm4-1.4.19.tar.xz',
           'cmp' => '.xz',
           'ver' => '4-1.4.19'
         },
  'eudev' => {
               'ver' => '3.2.11',
               'pkg' => 'eudev',
               'url' => 'https://github.com/eudev-project/eudev/releases/download/v3.2.11/eudev-3.2.11.tar.gz',
               'art' => '.tar',
               'loc' => 'https://github.com/eudev-project/eudev/releases/download/v3.2.11',
               'md5' => '417ba948335736d4d81874fba47a30f7',
               'arc' => 'eudev-3.2.11.tar.gz',
               'cmp' => '.gz'
             },
  'gzip' => {
              'ver' => '1.12',
              'arc' => 'gzip-1.12.tar.xz',
              'cmp' => '.xz',
              'art' => '.tar',
              'url' => 'https://ftp.gnu.org/gnu/gzip/gzip-1.12.tar.xz',
              'pkg' => 'gzip',
              'md5' => '9608e4ac5f061b2a6479dc44e917a5db',
              'loc' => 'https://ftp.gnu.org/gnu/gzip'
            },
  'zstd' => {
              'arc' => 'zstd-1.5.2.tar.gz',
              'cmp' => '.gz',
              'pkg' => 'zstd',
              'url' => 'https://github.com/facebook/zstd/releases/download/v1.5.2/zstd-1.5.2.tar.gz',
              'art' => '.tar',
              'md5' => '072b10f71f5820c24761a65f31f43e73',
              'loc' => 'https://github.com/facebook/zstd/releases/download/v1.5.2',
              'ver' => '1.5.2'
            },
  'sysvinit' => {
                  'arc' => 'sysvinit-3.04.tar.xz',
                  'cmp' => '.xz',
                  'url' => 'https://download.savannah.gnu.org/releases/sysvinit/sysvinit-3.04.tar.xz',
                  'art' => '.tar',
                  'pkg' => 'sysvinit',
                  'loc' => 'https://download.savannah.gnu.org/releases/sysvinit',
                  'md5' => '9a00e5f15dd2f038f10feee50677ebff',
                  'ver' => '3.04'
                },
  'e' => {
           'arc' => 'e2fsprogs-1.46.5.tar.gz',
           'cmp' => '.gz',
           'url' => 'https://downloads.sourceforge.net/project/e2fsprogs/e2fsprogs/v1.46.5/e2fsprogs-1.46.5.tar.gz',
           'pkg' => 'e',
           'art' => '.tar',
           'loc' => 'https://downloads.sourceforge.net/project/e2fsprogs/e2fsprogs/v1.46.5',
           'md5' => '3da91854c960ad8a819b48b2a404eb43',
           'ver' => '2fsprogs-1.46.5'
         }
}

