# alpine-simh


PLEASE NOTE THIS IS WORK IN PROGRESS!!!!!!!! 

Use https://github.com/RattyDAVE/alpine-simh/issues to send feedback, issues, comments and general chat.







simh built from source.

To run the included machines change directory to the /machine directory and then change to the sub directory for the machine.

In there are the install and run scripts.

Example to INSTALL.

```
cd /machines/3b2
./install_3b2.sh
```

Example to RUN.

```
cd /machines/3b2
./run_3b2.sh
```

A README.md may also be included for information on how to use it. 





### 3b2 https://en.wikipedia.org/wiki/3B_series_computers

See https://loomcom.com/3b2/emulator/

UNIX SVR3 pre installed and ready to run.

FINAL CHECK NEEDED

### altair https://en.wikipedia.org/wiki/Altair_8800

SEE README.md

FINAL CHECK NEEDED

### altairz80

Includeds CPM3 and zork (see README.md in /machines/altairz80)

FINAL CHECK NEEDED

### b5500 https://en.wikipedia.org/wiki/Burroughs_large_systems

See http://sky-visions.com/burroughs/index.shtml

To RUN

```
cd /machines/b5500
b5500 b5500
```

### BESM6 https://en.wikipedia.org/wiki/BESM-6
No scripts yet.

### cdc1700 https://en.wikipedia.org/wiki/CDC_1700

Work in progress

To Install

```
cd /machines/cdc1700
./install_cdc1700.sh
```

To RUN

```
cd /machines/cdc1700
./run_cdc1700.sh
```



### eclipse https://en.wikipedia.org/wiki/Data_General_Eclipse
### gri
### h316
### hp2100
### hp3000
###  i1401
### i1620
### i701
### i7010
### i704
### i7070
### i7080
### i7090
### i7094
### ibm1130
### id16
### id32
### imds-225
### isys8010
### isys8020
### isys8024
### isys8030
### lgp
### microvax1
### microvax2
### microvax3900
### nova
### pdp1
### pdp10
### pdp11
### pdp15
### pdp4
### pdp7
### pdp8
### pdp9
### rtvax1000
### s3
### scelbi
### sds
### ssem
### swtp6800mp-a
### swtp6800mp-a2
### tx-0
### vax
### vax730
### vax750
### vax780
### vax8600

OpenVMS VAX 7.3 template.
You will need to source a copy of the install CD. Called **OpenVMS_VAX_7.3.img.bz2** and also the licenses. 

https://www.hpe.com/emea_europe/en/servers/openvms/licensing.html or **LMFgen**

To install the PAK file (Licenses). When installing and you get to the stage.

```
* Do you want to register any Product Authorization Keys? (Y/N):
```

The install will then Quit.

Enter the following:

```
SET TERMINAL/INQUIRE
SET TERMINAL/NOWRAP
CREATE PAKS.COM
```

Cut and paste from the PAK file, then press CTRL-Z to save.

Then enter the following to run.

```
@PAKS.COM
```





