#!/bin/sh

mkdir caps11_system
cd caps11_system
wget http://simh.trailing-edge.com/kits/caps11_system.zip
unzip caps11_system.zip
mkdir caps11
cp caps11.t60 ./caps11/caps11.t60
echo #!/bin/sh > run_pdp11.sh
echo "pdp11 caps11.ini" >> run_pdp11.sh
chmod 755 run_pdp11.sh
cd ..

mkdir BASIC_CAPS-11_distribution
cd BASIC_CAPS-11_distribution
wget http://simh.trailing-edge.com/kits/BASIC_CAPS-11_distribution.zip
unzip BASIC_CAPS-11_distribution.zip
echo #!/bin/sh > run_pdp11.sh
echo "cd BASIC-CAPS-11\ \(SIMH\ TU60\ format\)/" >> run_pdp11.sh
echo "pdp11 bascaps11.ini"  >> run_pdp11.sh
echo "cd .."  >> run_pdp11.sh
chmod 755 run_pdp11.sh
cd ..

#mkdir rt11swre
#cd rt11swre
#wget http://simh.trailing-edge.com/kits/rt11swre.tar.Z
#tar xvf rt11swre.tar.Z
#cd ..

#mkdir rtv53swre
#cd rtv53swre
#wget http://simh.trailing-edge.com/kits/rtv53swre.tar.Z
#tar xvf rtv53swre.tar.Z
#cd ..

#mkdir rstsv7gen
#cd rstsv7gen
#wget http://simh.trailing-edge.com/kits/rstsv7gen.tar.Z
#tar xvf rstsv7gen.tar.Z
#cd ..

mkdir rstsv7swre
cd rstsv7swre
wget http://simh.trailing-edge.com/kits/rstsv7swre.tar.Z
tar xvf rstsv7swre.tar.Z
echo -e "set cpu 1m\natt rl0 Disks/rsts_full_rl.dsk\natt rl1 Disks/rsts_swap_rl.dsk\nb rl0" > pdp11.ini
echo #!/bin/sh > run_pdp11.sh
echo pdp11 >> run_pdp11.sh
chmod 755 run_pdp11.sh
cd ..

mkdir uv5swre
cd uv5swre
wget http://simh.trailing-edge.com/kits/uv5swre.zip
unzip uv5swre.zip
echo -e "set cpu 1m\natt rl0 unix_v5_rk.dsk\nb rl0" > pdp11.ini
echo #!/bin/sh > run_pdp11.sh
echo pdp11 >> run_pdp11.sh
chmod 755 run_pdp11.sh
cd ..

mkdir uv6swre
cd uv6swre
wget http://simh.trailing-edge.com/kits/uv6swre.zip
unzip uv6swre.zip
echo "set cpu 1m" > pdp11.ini
echo "att rl0 unix0_v6_rk.dsk" >> pdp11.ini
echo "att rl1 unix1_v6_rk.dsk" >> pdp11.ini
echo "att rl2 unix2_v6_rk.dsk" >> pdp11.ini
echo "att rl3 unix3_v6_rk.dsk" >> pdp11.ini
echo "b rl0" >> pdp11.ini
echo #!/bin/sh > run_pdp11.sh
echo pdp11 >> run_pdp11.sh
chmod 755 run_pdp11.sh
cd ..

mkdir uv7swre
cd uv7swre
wget http://simh.trailing-edge.com/kits/uv7swre.zip
unzip uv7swre.zip
echo "set cpu 1m" > pdp11.ini
echo "att rl0 unix_v7_rl.dsk" >> pdp11.ini
echo "b rl0" >> pdp11.ini
echo #!/bin/sh > run_pdp11.sh
echo pdp11 >> run_pdp11.sh
chmod 755 run_pdp11.sh
cd ..


