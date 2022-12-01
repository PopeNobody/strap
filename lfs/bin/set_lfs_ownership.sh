#!/bin/bash

set -ex
source etc/env.sh
test -n "$LFS"
test "$(id -un)" == root


chown -v lfs $LFS/{usr{,/*},lib,var,etc,bin,sbin,strap}
case $(uname -m) in
  x86_64) chown -v lfs $LFS/lib64 ;;
esac
