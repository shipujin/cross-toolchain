#!/bin/bash
set -e
set -x


export PATH=/opt/mips64el-toolchain/bin:$PATH
export LD_LIBRARY_PATH=/opt/mips64el-toolchain/lib
export LD_LIBRARY_PATH=/opt/mips64el-toolchain/x86_64-unknown-linux-gnu/mips64el-unknown-linux-gnu/lib:$LD_LIBRARY_PATH
bash 00-build-init
echo "Finish 00"

bash 01-build-binutils
echo "Finish 01"

bash 02-build-linux
echo "Finish 02"

bash 03-build-gcc-stage0
echo "Finish 03"

bash 04-build-glibc-linux-2.6
echo "Finish 04"

bash 05-build-glibc-linux-3.4
echo "Finish 05"

bash 06-build-gcc-stage1
echo "Finish 06"

bash 07-build-gcc-libstdc++
echo "Finish 07"


