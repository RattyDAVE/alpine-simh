# alpine-simh

PLEASE NOTE THIS IS WORK IN PROGRESS. Suggestions and scripts for missing machines, disk or tape scripts are very welcome!

Use https://github.com/RattyDAVE/alpine-simh/issues to send feedback, issues, comments and general chat.

# Part of the retro mini and mainframe series.

* https://hub.docker.com/r/rattydave/alpine-multics - Fully Running Multics mainframe time sharing operating system.
* https://hub.docker.com/r/rattydave/docker-ubuntu-hercules-tss - Fully running version 3.0 of IBM's Time Sharing System/370
* https://hub.docker.com/r/rattydave/docker-ubuntu-hercules-vm370 - vm370 Emulator with Robert O'Hara's Six Pack
* https://hub.docker.com/r/rattydave/docker-ubuntu-hercules-mvs - Fully running MVS 3.8j Tur(n)key 4- System. IBM Mainframe.
* https://hub.docker.com/r/rattydave/alpine-simh/ - AT&T, Data General, DEC PDPs and VAXen, Honeywell, HP and others. All with OSs.  


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

Machine          |Directory   |OS             |H/W Year|S/W Year|Fully Working |
| ---            | ---        | ---           | ---    | ---    |---          |
AT&T 3B2         |3b2         |UNIX System V Release 3.2  |1984|1988|[x]
MITS Altair 8080 |altair      |Various         |1975|Various|[x]
MITS Altair Z80  |altairz80   |CP/M 3        |1975|1983|[x]
BLS B5500        |b5500       |               |1964||[ ]
CDC1700          |cdc1700     |               |1966||[x]
DG Eclipse       |eclipse     |RDOS 7.50      |1974||[x]
DG Nova          |nova        |RDOS 7.50      |1969||[x]
HP2100           |hp2100      |RTE-6/VM       |1966||[x]
HP3000           |hp3000      |MPE-V/R        |1972||[x]
DEC PDP1         |pdp1        |LISP           |1960||[ ]
DEC PDP1         |pdp1        |DDT            |1960|1962|[ ]
DEC PDP4         |pdp4        |DECsys         |1962||[x]
DEC PDP7         |pdp7        |SIM8           |1964||[x]
DEC PDP8         |pdp8        |TSS/8          |1966||[x]
DEC PDP11        |pdp11       |CAPS11         |1969||[x]
DEC PDP11        |pdp11       |DOS11          |1969||[x]
DEC PDP11        |pdp11       |RSTS/E V7      |1969||[x]
DEC PDP11        |pdp11       |UNIX V5        |1969||[x]
DEC PDP11        |pdp11       |UNIX V6        |1969||[x]
DEC PDP11        |pdp11       |UNIX V7        |1969||[x]
DEC PDP15        |pdp15       |FOCAL15        |1970||[x]
DEC PDP15        |pdp15       |ASS            |1970||[x]
DEC PDP15        |pdp15       |DOS15          |1970||[x]
DEC PDP15        |pdp15       |XVM/RSX        |1970||[x]
DEC Microvax3900 |microvax3900|OpenVMS VAX 7.3|1989||[x]


## AT&T
### 3b2 https://en.wikipedia.org/wiki/3B_series_computers
See https://loomcom.com/3b2/emulator/
UNIX(R) System V Release 3.2 AT&T 3B2 Version 2 pre installed and ready to run.  **WORKING**

## MITS
### altair https://en.wikipedia.org/wiki/Altair_8800
SEE README.md
### altairz80
Includeds CPM3 and zork (see README.md in /machines/altairz80) **WORKING**

## Burroughs Large Systems
### b5500 https://en.wikipedia.org/wiki/Burroughs_large_systems
See http://sky-visions.com/burroughs/index.shtml
Install working needs more work.

## "Bolshaya Elektronno-Schetnaya Mashina" ("Большая Электронно-Счётная Машина")
### BESM6 https://en.wikipedia.org/wiki/BESM-6
Unable to find media.

## Control Data Corporation
### cdc1700 https://en.wikipedia.org/wiki/CDC_1700
**WORKING** See instructions. https://github.com/simh/simh/blob/master/CDC1700/CDC1700-MSOS.txt

## Data General
### eclipse https://en.wikipedia.org/wiki/Data_General_Eclipse
Mapped ECLIPSE RDOS Rev 7.50 **WORKING**
### nova https://en.wikipedia.org/wiki/Data_General_Nova
NOVA RDOS Rev 7.50 **WORKING**

## GRI Corporation
### gri
Unable to find media.

## Honeywell
### h316 https://en.wikipedia.org/wiki/Honeywell_316
Read the README.md

## Hewlett-Packard
### hp2100 https://en.wikipedia.org/wiki/HP_2100
RTE-6/VM REV 6200 **WORKING**
### hp3000 https://en.wikipedia.org/wiki/HP_3000
HP 3000 MPE-V/R version E.01.00 operating system. **WORKING**

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
### pdp1 https://en.wikipedia.org/wiki/PDP-1
Lisp for the PDP-1 (courtesy of the author, L Peter Deutsch).

See lisp_doc.txt

DDT for the PDP-1 (courtesy of Derek Peschel).

See ddt_doc.txt
### pdp4 https://en.wikipedia.org/wiki/PDP-4
DECSys for the PDP-4 (courtesy of Harlan Lefevre). **WORKING**
### pdp7 https://en.wikipedia.org/wiki/PDP-7
SIM8 for the PDP-7 **WORKING**
See sim8_doc.txt
### pdp8 https://en.wikipedia.org/wiki/PDP-8
* ESI-X for the PDP-8 (courtesy of the author, David J Waks).
  * NOT INSTALLED Commented out in install_pdp8.sh

* FOCAL69 for the PDP-8 (courtesy of Digital Equipment Corporation).
  * NOT INSTALLED Commented out in install_pdp8.sh

* OS/8 for the PDP-8 (under license provided by Digital Equipment Corporation).
  * NOT INSTALLED Commented out in install_pdp8.sh

* TSS/8 for the PDP-8 (courtesy of Digital Equipment Corporation). **WORKING**

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
* CAPS-11 operating system for a PDP-11 with casette storage (courtesy of Digital Equipment Corporation, prepared by Malcolm Macleod and Lou Ernst)
  * Installed in caps11_system **WORKING**

* CAPS-11 BASIC interactive BASIC operating environment for a PDP-11 with casette storage (courtesy of Digital Equipment Corporation, prepared by Malcolm Macleod and Lou Ernst)
  * Installed in BASIC_CAPS-11_distribution **WORKING**

* DOS/Batch-11 V10 for the PDP-11.
  * Installed in dos11 **WORKING**

* RSTS/E V7 distribution system and RSTS/E prebuilt system for the PDP-11 (under license provided by Mentec Corporation).
  * Installed in rstsv7swre **WORKING**

* PDP-11 UNIX V5 with sources (under license provided by Caldera Corporation).
  * Installed in uv5swre **WORKING**


* PDP-11 UNIX V6 with sources (under license provided by Caldera Corporation).
  * Installed in uv6swre **WORKING**

* PDP-11 UNIX V7 with sources (under license provided by Caldera Corporation).
  * Installed in uv7swre **WORKING**

### pdp15 https://en.wikipedia.org/wiki/PDP-15
* FOCAL15 for the PDP-15 (courtesy of Digital Equipment Corporation).
Installed in focal15 **WORKING**

* Advanced Software System, both Keyboard Monitor and Foreground/Background, for the PDP-15 (courtesy of Digital Equipment Corporation).
Installed in adss15 **WORKING**

* DOS-15 for the PDP-15 (courtesy of Digital Equipment Corporation).
Installed in dos15 **WORKING**

* XVM/DOS for the PDP-15 (courtesy of Digital Equipment Corporation).
Not installed. 

* XVM/RSX for the PDP-15 (courtesy of Digital Equipment Corporation, prepared by Andrew Warkentin).
Installed in xvmrsx - **This is probably the one want.**

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
