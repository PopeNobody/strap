#!/bin/bash

set -ex
test "$(id -un)" == root

chown -vR lfs.lfs ~lfs 2>&1 | { grep -v "retained as lfs:lfs$" || true; }
