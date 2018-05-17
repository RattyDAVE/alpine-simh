#!/bin/sh

mkdir rte-6vm
cd rte-6vm
wget http://www.bitsavers.org/bits/HP/tapes/rte-6vm/rte6200/rte6200.zip
unzip rte6200.zip
echo #!/bin/sh > run_hp2100.sh
echo "hp2100 rte6200.sim" >> run_hp2100.sh
chmod 755 run_hp2100.sh
cd ..

mkdir rte
cd rte
wget http://simh.trailing-edge.com/kits/RTE.zip
unzip RTE.zip
echo #!/bin/sh > run_hp2100.sh
echo "hp2100 rte_fh.ini" >> run_hp2100.sh
chmod 755 run_hp2100.sh
cd ..

mkdir rteii
cd rteii
wget http://simh.trailing-edge.com/kits/RTE-II.zip
unzip RTE-II.zip
echo #!/bin/sh > run_hp2100.sh
echo "hp2100 rte.ini" >> run_hp2100.sh
chmod 755 run_hp2100.sh
cd ..

mkdir mts
cd mts
wget http://simh.trailing-edge.com/kits/MTS.zip
unzip MTS.zip
echo #!/bin/sh > run_hp2100.sh
echo "hp2100 mts.ini" >> run_hp2100.sh
chmod 755 run_hp2100.sh
cd ..

mkdir dos
cd dos
wget http://simh.trailing-edge.com/kits/DOS.zip
unzip DOS.zip
echo #!/bin/sh > run_hp2100.sh
echo "hp2100 dos.ini" >> run_hp2100.sh
chmod 755 run_hp2100.sh
cd ..

mkdir dos-m
cd dos-m
wget http://simh.trailing-edge.com/kits/DOS-M.zip
unzip DOS-M.zip
echo #!/bin/sh > run_hp2100.sh
echo "hp2100 dos.ini" >> run_hp2100.sh
chmod 755 run_hp2100.sh
cd ..

mkdir dos-iii
cd dos-iii
wget http://simh.trailing-edge.com/kits/DOS-III.zip
unzip DOS-III.zip
echo #!/bin/sh > run_hp2100.sh
echo "hp2100 dos.ini" >> run_hp2100.sh
chmod 755 run_hp2100.sh
cd ..
