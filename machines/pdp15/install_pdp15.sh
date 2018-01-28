#!/bin/sh

mkdir focal15
cd focal15
wget http://simh.trailing-edge.com/kits/focal15.zip
unzip focal15.zip
echo "att ptr focal15.bin" > pdp15.ini
echo "boot ptr" >> pdp15.ini
echo #!/bin/sh > run_pdp15.sh
echo "pdp15 pdp15.ini" >> run_pdp15.sh
chmod 755 run_pdp15.sh
cd ..

mkdir adss15
cd adss15
wget http://simh.trailing-edge.com/kits/adss15.zip
unzip adss15.zip

echo "load dec-15u.rim 77637" > pdp15.ini
echo "ex pc" >> pdp15.ini
echo "attach dt adss15_32k.dtp" >> pdp15.ini
echo "set lpt disa" >> pdp15.ini
echo "set lp9 ena" >> pdp15.ini
echo "run" >> pdp15.ini

echo #!/bin/sh > run_pdp15.sh
echo "pdp15 pdp15.ini" >> run_pdp15.sh
chmod 755 run_pdp15.sh
cd ..

mkdir dos15
cd dos15
wget http://simh.trailing-edge.com/kits/dos15.zip
unzip dos15.zip

echo #!/bin/sh > run_pdp15.sh
echo "pdp15 dos.ini" >> run_pdp15.sh
chmod 755 run_pdp15.sh
cd ..


mkdir xvmdos
cd xvmdos
wget http://simh.trailing-edge.com/kits/xvmdos.zip
unzip xvmdos.zip
cd ..

mkdir xvmrsx
cd xvmrsx
wget http://simh.trailing-edge.com/kits/xvmrsx_simh_kit.zip
unzip xvmrsx_simh_kit.zip
mv xvmrsx_simh_kit/* .
rm -R xvmrsx_simh_kit

echo #!/bin/sh > run_pdp15.sh
echo "pdp15 xvmrsx_boot.ini" >> run_pdp15.sh
chmod 755 run_pdp15.sh
cd ..

