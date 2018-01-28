#!/bin/sh

mkdir esixswre
cd esixswre
wget http://simh.trailing-edge.com/kits/esixswre.tar.Z
tar xvf esixswre.tar.Z
cd ..

mkdir foclswre
cd foclswrecd 
wget http://simh.trailing-edge.com/kits/foclswre.tar.Z
tar xvf foclswre.tar.Z
cd ..

mkdir os8swre
cd os8swre
wget http://simh.trailing-edge.com/kits/os8swre.tar.Z
tar xvf os8swre.tar.Z
cd ..

mkdir tss8
cd tss8
wget http://simh.trailing-edge.com/kits/tss8.zip
unzip tss8.zip
cd ..

mkdir dms8
cd dms8
wget http://simh.trailing-edge.com/kits/dms8.zip
unzip dms8.zip
cd ..

mkdir caps8_all
cd caps8_all
wget http://simh.trailing-edge.com/kits/caps8_all.zip
unzip caps8_all.zip
cd ..
