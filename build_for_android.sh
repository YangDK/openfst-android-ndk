#!/bin/bash

make distclean
./configure --enable-fast-install=no --enable-shared=no --enable-static
ndk-build

#These libraries are placed at the usual location under obj/ or obj-debug/.
