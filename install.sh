#!/bin/bash

wget https://thoughtbot.github.io/rcm/dist/rcm-1.2.2.tar.gz && \
tar -xvf rcm-1.2.2.tar.gz && \
cd rcm-1.2.2 && \

./configure --prefix=~/bin && \
make && \
make install

cd .. && rm -rf rcm-1.2.2

git clone git://github.com/ryoia/dotfiles.git ~/.dotfiles

rcup -v
