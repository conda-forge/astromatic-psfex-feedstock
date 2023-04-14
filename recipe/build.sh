#!/bin/bash

sh autogen.sh
export LIBS=-lpthread
./configure --prefix=${PREFIX} \
    --enable-openblas \
    --with-openblas-incdir=${PREFIX}/include \
    --with-openblas-libdir=${PREFIX}/lib \
    --enable-plplot=no
make
make install
