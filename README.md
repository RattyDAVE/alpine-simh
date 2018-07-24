# alpine-simh

PLEASE NOTE THIS IS WORK IN PROGRESS. Suggestions and scripts for missing machines, disk or tape scripts are very welcome!

Use https://github.com/RattyDAVE/alpine-simh/issues to send feedback, issues, comments and general chat.

# Part of the retro mini and mainframe series.

* https://hub.docker.com/r/rattydave/alpine-multics - Fully Running Multics mainframe time sharing operating system. (1965)
* https://hub.docker.com/r/rattydave/docker-ubuntu-hercules-tss - Fully running version 3.0 of IBM's Time Sharing System/370
* https://hub.docker.com/r/rattydave/docker-ubuntu-hercules-vm370 - vm370 Emulator with Robert O'Hara's Six Pack
* https://hub.docker.com/r/rattydave/docker-ubuntu-hercules-mvs - Fully running MVS 3.8j Tur(n)key 4- System. IBM Mainframe.
* https://hub.docker.com/r/rattydave/alpine-simh/ - AT&T, Data General, DEC PDPs and VAXen, Honeywell, HP and others. All with OSs.

Donations are always welcome.
Bitcoin : 15c4aey1mVswagkCw4uTCRQHNvjEuMjzTL


# Usage

docker run --name mini -it rattydave/alpine-simh

simh built from the latest source.

rattydave/alpine-simh:core   - The latest simh built from source (at build time).
rattydave/alpine-simh:latest - as rattydave/alpine-simh:core but witht he scripts to install the machines too.

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

Machine                                                            |Directory   |OS                                |H/W Year|S/W Year|Fully Working|Notes
  ---                                                              | ---        | ---                              | ---    | ---    |---          | ---        
[At&T 3b2](https://en.wikipedia.org/wiki/3B_series_computers)      |3b2         |Unix System V Release 3.2         |1984    |1988|Y|
[Mits Altair 8080](https://en.wikipedia.org/wiki/Altair_8800)      |Altair      |Various                           |1975    |Various|Y|See Readme.Md
Mits Altair Z80                                                    |Altairz80   |Cp/M 3 (with Zork)                |1975    |1983|Y|See Readme.Md
[Bls B5500](https://en.wikipedia.org/wiki/Burroughs_large_systems) |B5500       |                                  |1964    |||
[Cdc1700](Https://En.Wikipedia.Org/wiki/cdc_1700)                  |Cdc1700     |                                  |1966    ||Y|See [Notes](Https://Github.Com/Simh/Simh/Blob/Master/Cdc1700/Cdc1700-Msos.Txt)
[Dg Eclipse](Https://En.Wikipedia.Org/wiki/Data_General_Eclipse)   |Eclipse     |Rdos 7.50                         |1974    |1986|Y|
[Dg Nova](Https://En.Wikipedia.Org/wiki/Data_General_Nova)         |Nova        |Rdos 7.50                         |1969    |1986|Y|
[Ibm 1130]()                                                       |Ibm1130     |                                  |1965    ||Y|
[Honeywell 316](Https://En.Wikipedia.Org/wiki/Honeywell_316)       |H316        |                                  |1969    ||Y|See Readme.Md
[Hp2000](Https://En.Wikipedia.Org/wiki/Hp_2100)                    |Hp2100      |Time-Shared Basic Operating System|1966    |1975|Y|
[Hp2000e](Https://En.Wikipedia.Org/wiki/Hp_2100)                   |Hp2100      |Time-Shared Basic Operating System|1966    |1975|Y|
[Hp2000f](Https://En.Wikipedia.Org/wiki/Hp_2100)                   |Hp2100      |Time-Shared Basic Operating System|1966    |1975|Y|
[Hp2100](Https://En.Wikipedia.Org/wiki/Hp_2100)                    |Hp2100      |Dos                               |1966    ||Y|
[Hp2100](Https://En.Wikipedia.Org/wiki/Hp_2100)                    |Hp2100      |Dos-M                             |1966    ||Y|
[Hp2100](Https://En.Wikipedia.Org/wiki/Hp_2100)                    |Hp2100      |Dos-Iii                           |1966    ||Y|
[Hp2100](Https://En.Wikipedia.Org/wiki/Hp_2100)                    |Hp2100      |Mts                               |1966    ||Y|
[Hp2100](Https://En.Wikipedia.Org/wiki/Hp_2100)                    |Hp2100      |Rte                               |1966    ||Y|
[Hp2100](Https://En.Wikipedia.Org/wiki/Hp_2100)                    |Hp2100      |Rte-Ii                            |1966    ||Y|
[Hp2100](Https://En.Wikipedia.Org/wiki/Hp_2100)                    |Hp2100      |Rte-6/Vm                          |1966    |1981|Y|
[Hp3000](Https://En.Wikipedia.Org/wiki/Hp_2000)                    |Hp3000      |Mpe-V/R                           |1972    |1985?|Y|
[Dec Pdp1](Https://En.Wikipedia.Org/wiki/Pdp-1)                    |Pdp1        |Lisp                              |1960    ||N|See Lisp_Doc.Txt
[Dec Pdp1](Https://En.Wikipedia.Org/wiki/Pdp-1)                    |Pdp1        |Ddt                               |1960    |1962|N|See Ddt_Doc.Txt
[Dec Pdp4](Https://En.Wikipedia.Org/wiki/Pdp-4)                    |Pdp4        |Decsys                            |1962    ||Y|
[Dec Pdp7](Https://En.Wikipedia.Org/wiki/Pdp-7)                    |Pdp7        |Sim8                              |1964    ||Y|See Sim8_Doc.Txt
[Dec Pdp8](Https://En.Wikipedia.Org/wiki/Pdp-8)                    |Pdp8        |Tss/8                             |1966    ||Y|
[Dec Pdp11](Https://En.Wikipedia.Org/wiki/Pdp-11)                  |Pdp11       |Caps11                            |1969    ||Y|
[Dec Pdp11](Https://En.Wikipedia.Org/wiki/Pdp-11)                  |Pdp11       |Rt-11sj V04.00c                   |1969    |1970|Y|
[Dec Pdp11](Https://En.Wikipedia.Org/wiki/Pdp-11)                  |Pdp11       |Dos11                             |1969    ||Y|
[Dec Pdp11](Https://En.Wikipedia.Org/wiki/Pdp-11)                  |Pdp11       |Rsts/E V7                         |1969    ||Y|
[Dec Pdp11](Https://En.Wikipedia.Org/wiki/Pdp-11)                  |Pdp11       |Unix V5                           |1969    ||Y|
[Dec Pdp11](Https://En.Wikipedia.Org/wiki/Pdp-11)                  |Pdp11       |Unix V6                           |1969    ||Y|
[Dec Pdp11](Https://En.Wikipedia.Org/wiki/Pdp-11)                  |Pdp11       |Unix V7                           |1969    ||Y|
[Dec Pdp15](Https://En.Wikipedia.Org/wiki/Pdp-15)                  |Pdp15       |Focal15                           |1970    ||Y|
[Dec Pdp15](Https://En.Wikipedia.Org/wiki/Pdp-15)                  |Pdp15       |Ass                               |1970    ||Y|
[Dec Pdp15](Https://En.Wikipedia.Org/wiki/Pdp-15)                  |Pdp15       |Dos15                             |1970    ||Y|
[Dec Pdp15](Https://En.Wikipedia.Org/wiki/Pdp-15)                  |Pdp15       |Xvm/Rsx                           |1970    ||Y|
[Dec Microvax3900](Https://En.Wikipedia.Org/wiki/Vax)              |Microvax3900|Openvms Vax 7.3                   |1989    ||Y|



## Burroughs Large Systems
### b5500 https://en.wikipedia.org/wiki/Burroughs_large_systems
See http://sky-visions.com/burroughs/index.shtml
Install working needs more work.

## "Bolshaya Elektronno-Schetnaya Mashina" ("Большая Электронно-Счётная Машина")
### BESM6 https://en.wikipedia.org/wiki/BESM-6
Unable to find media.

## GRI Corporation
### gri
Unable to find media.

## Hewlett-Packard
### hp3000 https://en.wikipedia.org/wiki/HP_3000

## IBM
### i1401 https://en.wikipedia.org/wiki/IBM_1401
Unable to find media.
### i1620 https://en.wikipedia.org/wiki/IBM_1620
Unable to find media.
### i701 https://en.wikipedia.org/wiki/IBM_701
Unable to find media.
### i7010 https://en.wikipedia.org/wiki/IBM_700/7000_series#1400_series_architecture_(7010)
Unable to find media.
### i704 https://en.wikipedia.org/wiki/IBM_704
Unable to find media.
### i7070 https://en.wikipedia.org/wiki/IBM_7070
Unable to find media.
### i7080 https://en.wikipedia.org/wiki/IBM_7080
Unable to find media.
### i7090 https://en.wikipedia.org/wiki/IBM_7090
Unable to find media.
### i7094 https://en.wikipedia.org/wiki/IBM_7090#IBM_7094
Unable to find media.
### ibm1130 https://en.wikipedia.org/wiki/IBM_1130
See readme1130.txt after install.
### s3 https://en.wikipedia.org/wiki/IBM_System/3
Unable to find media.


## Interdata, Inc.
### id16 https://en.wikipedia.org/wiki/Interdata
### id32 https://en.wikipedia.org/wiki/Interdata_7/32_and_8/32

##  Intel Systems
### imds-225
### isys8010
### isys8020
### isys8024
### isys8030

## The Royal-McBee
### lgp https://en.wikipedia.org/wiki/LGP-30
http://obsolescenceguaranteed.blogspot.co.uk/2016/06/using-simh-lgp-30-emulator.html
Need tapes get from here. ftp://ftp.informatik.uni-stuttgart.de/pub/cm/lgp30/

## DEC
### pdp8 https://en.wikipedia.org/wiki/PDP-8
* ESI-X for the PDP-8 (courtesy of the author, David J Waks).
  * NOT INSTALLED Commented out in install_pdp8.sh

* FOCAL69 for the PDP-8 (courtesy of Digital Equipment Corporation).
  * NOT INSTALLED Commented out in install_pdp8.sh

* OS/8 for the PDP-8 (under license provided by Digital Equipment Corporation).
  * NOT INSTALLED Commented out in install_pdp8.sh

* 4k Disk Monitor System for the PDP-8 (courtesy of Digital Equipment Corporation).
  * NOT INSTALLED Commented out in install_pdp8.sh

* CAPS-8 cassette operating system for the PDP-8 (courtesy of Digital Equipment Corporation, prepared by David Gesswein).
  * NOT INSTALLED Commented out in install_pdp8.sh

### pdp9 https://en.wikipedia.org/wiki/PDP-9
Unable to find media.

### pdp10 https://en.wikipedia.org/wiki/PDP-10
Media in http://pdp-10.trailing-edge.com/
NOT INSTALLED 
### pdp11 https://en.wikipedia.org/wiki/PDP-11

* CAPS-11 BASIC interactive BASIC operating environment for a PDP-11 with casette storage (courtesy of Digital Equipment Corporation, prepared by Malcolm Macleod and Lou Ernst)
  * Installed in BASIC_CAPS-11_distribution **WORKING**

### pdp15 https://en.wikipedia.org/wiki/PDP-15
* XVM/DOS for the PDP-15 (courtesy of Digital Equipment Corporation).
Not installed. 

### vax https://en.wikipedia.org/wiki/VAX
* NetBSD 7.1.1 http://www.netbsd.org/ **WORKING**

### rtvax1000
### vax730
### vax750
### vax780
### vax8600
### microvax1
### microvax2
### microvax3900
Ready to run OpenVMS VAX 7.3 ** WORKING **
See README.md

## Scelbi Computer Consulting
### scelbi http://history-computer.com/ModernComputer/Personal/Scelbi.html

## Scientific Data Systems
### sds https://en.wikipedia.org/wiki/SDS_930
Tapes at http://www.bitsavers.org/bits/SDS/9xx/

## Manchester University SSEM
### ssem https://en.wikipedia.org/wiki/Manchester_Small-Scale_Experimental_Machine

## Southwest Technical Products Corporation
### swtp6800mp-a http://www.swtpc.com/mholley/swtpc_6800.htm
### swtp6800mp-a2 http://www.swtpc.com/mholley/swtpc_6800.htm

##  MIT Lincoln Laboratory
### tx-0 https://en.wikipedia.org/wiki/TX-0
Code at http://www.bitsavers.org/bits/MIT/tx-0/
