#!/bin/sh
echo Taken From https://loomcom.com/3b2/emulator/
#wget https://static.loomcom.com/3b2/emulator/hd161_extras.img.gz
#wget https://loomcom.com/3b2/emulator/hd161_extras.img.gz
#gzip -d hd161_extras.img.gz
#wget https://loomcom.com/3b2/emulator/nvram.bin
#wget https://static.loomcom.com/3b2/emulator/nvram.bin

# https://github.com/RattyDAVE/alpine-simh/issues/4
# Thanks to Chris (https://github.com/crdotson)
wget https://archives.loomcom.com/3b2/emulator/extras_gnu_src.img.gz
gzip -d extras_gnu_src.img.gz
wget https://archives.loomcom.com/3b2/emulator/700/nvram.bin


#curl -L -o hd161.img.gz -d "nopassword=1" https://download.cloudatcost.com/download/npbnp1q1qdhb1lexof8mvxsog
#gzip -d hd161.img.gz
