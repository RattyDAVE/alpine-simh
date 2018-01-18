#!/bin/sh

curl -L -o OpenVMS_VAX_7.3.img.zip -d "nopassword=1" https://download.cloudatcost.com/download/2zx9xe6s62m4vh2rktnkmnujj
unzip OpenVMS_VAX_7.3.img.zip
rm OpenVMS_VAX_7.3.img.zip
microvax3900 install_microvax3900.ini
