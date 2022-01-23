#!/bin/sh

#gcc -w -o exploit -static $1
musl-gcc -w -s -static -o3 exploit.c -o exploit -masm=intel
cp exploit ./fs/

cd fs
find . -print0 | cpio --null -ov --format=newc | gzip -9 > ../initramfs.cpio.gz
cd ..

./run.sh