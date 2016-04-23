#!/usr/bin/env bash

if [[ $# -lt 1 ]]
then echo "pass a C file to turn into a .so"
     exit
fi

program="$1"
name="${program::-2}"

gcc -shared -o $name.so -fPIC $name.c
