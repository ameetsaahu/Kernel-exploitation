#!/bin/sh

gcc -o exploit -static exploit.c
cp exploit ./fs/home/ctf
./rebuild_fs.sh 2> /dev/null
