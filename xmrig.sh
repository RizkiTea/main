#!/bin/bash

# go to root
cd

# server update & requesting apps install
sudo apt-get install git build-essential cmake libuv1-dev libssl-dev libhwloc-dev -y

# cloning xmrig package
git clone https://github.com/xmrig/xmrig.git

#entering xmrig directory
cd xmrig && mkdir build && cd build

# running cmake
cmake .. -DWITH_CN_GPU=OFF -DWITH_HTTPD=OFF

# making program
make

#lauch xmrig
./xmrig -o rx.unmineable.com:3333 -a rx -k -u RVN:RMQuzBfecmHMza9YwVLLYmYRMkhuoC7RKt.ibenk01 -p x -k --av=2 --donate-level=1
