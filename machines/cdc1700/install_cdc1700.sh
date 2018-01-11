#!/bin/sh
# Taken from http://www.bitsavers.org/bits/CDC/1700_Cyber18/20100524/
wget http://www.bitsavers.org/bits/CDC/1700_Cyber18/20100524/MSOS5_SL136.tap
#cp /usr/src/simh/CDC1700/customization/custom5/* .
cp /usr/src/simh/CDC1700/*.simh .
cdc1700 msosInstall.simh MSOS5_SL136.tap

