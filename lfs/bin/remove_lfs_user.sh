#!/bin/bash

set -ex

sed -i~ '/^lfs:/ d' /etc/passwd /etc/group
