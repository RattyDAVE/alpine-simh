#!/bin/sh

mkdir tmp
cd tmp
wget http://www.theoengel.nl/ddpx16/DDP516_01.tar.gz
tar xvf DDP516_01.tar.gz
cd ..
cp tmp/DDP516_01/basic_16_slst.ptp .

