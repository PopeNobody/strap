#!/bin/bash

docker build  cont/. -t lfs
docker run -it -v/boot:/boot lfs



