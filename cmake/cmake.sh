#!/bin/bash -x

if [ -z "$1" ]; then
    exit 1
fi

rm -r "./$1Build"
mkdir "./$1Build"
cd "$1Build"
cmake -G "Eclipse CDT4 - Unix Makefiles" -DCMAKE_PREFIX_PATH="~/Qt/5.9.1/gcc_64/" ../$1
