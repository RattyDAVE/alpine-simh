#!/bin/sh
echo Taken From https://loomcom.com/3b2/emulator/
wget https://static.loomcom.com/3b2/emulator/hd161_extras.img.gz
#wget https://loomcom.com/3b2/emulator/hd161_extras.img.gz
gzip -d hd161_extras.img.gz
#wget https://loomcom.com/3b2/emulator/nvram.bin
wget https://static.loomcom.com/3b2/emulator/nvram.bin

#curl -L -o hd161.img.gz -d "nopassword=1" https://download.cloudatcost.com/download/npbnp1q1qdhb1lexof8mvxsog
#gzip -d hd161.img.gz
