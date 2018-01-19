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
UNIX(R) System V Release 3.2 AT&T 3B2 Version 2 pre installed and ready to run.  **WORKING**

### altair https://en.wikipedia.org/wiki/Altair_8800
SEE README.md

### altairz80
Includeds CPM3 and zork (see README.md in /machines/altairz80) **WORKING**

### b5500 https://en.wikipedia.org/wiki/Burroughs_large_systems
See http://sky-visions.com/burroughs/index.shtml
Install working needs more work.

### BESM6 https://en.wikipedia.org/wiki/BESM-6
Unable to find media.

### cdc1700 https://en.wikipedia.org/wiki/CDC_1700
Install works OK.
Run does not.

### eclipse https://en.wikipedia.org/wiki/Data_General_Eclipse
Mapped ECLIPSE RDOS Rev 7.50 **WORKING**

### gri
Unable to find media.

### h316 https://en.wikipedia.org/wiki/Honeywell_316
Read the README.md

### hp2100 https://en.wikipedia.org/wiki/HP_2100
RTE-6/VM REV 6200 **WORKING**

### hp3000 https://en.wikipedia.org/wiki/HP_3000
HP 3000 MPE-V/R version E.01.00 operating system. **WORKING**

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

### id16
### id32
### imds-225
### isys8010
### isys8020
### isys8024
### isys8030
### lgp http://obsolescenceguaranteed.blogspot.co.uk/2016/06/using-simh-lgp-30-emulator.html
Need tapes get from here. ftp://ftp.informatik.uni-stuttgart.de/pub/cm/lgp30/

### microvax1
### microvax2
### microvax3900
Ready to run OpenVMS VAX 7.3 ** WORKING **
See README.md

### nova https://en.wikipedia.org/wiki/Data_General_Nova
NOVA RDOS Rev 7.50 **WORKING**

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
Installed in caps11_system **WORKING**

* CAPS-11 BASIC interactive BASIC operating environment for a PDP-11 with casette storage (courtesy of Digital Equipment Corporation, prepared by Malcolm Macleod and Lou Ernst)
Installed in BASIC_CAPS-11_distribution **WORKING**

* DOS/Batch-11 V10 for the PDP-11.
Installed in dos11 **WORKING**

* RSTS/E V7 distribution system and RSTS/E prebuilt system for the PDP-11 (under license provided by Mentec Corporation).
Installed in rstsv7swre **WORKING**

* PDP-11 UNIX V5 with sources (under license provided by Caldera Corporation).
Installed in uv5swre **WORKING**

* PDP-11 UNIX V6 with sources (under license provided by Caldera Corporation).
Installed in uv6swre **WORKING**

* PDP-11 UNIX V7 with sources (under license provided by Caldera Corporation).
Installed in uv7swre **WORKING**

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

### rtvax1000
### s3
### scelbi
### sds
### ssem
### swtp6800mp-a
### swtp6800mp-a2
### tx-0
### vax https://en.wikipedia.org/wiki/VAX
* NetBSD 7.1.1 http://www.netbsd.org/ **WORKING**

### vax730
### vax750
### vax780
### vax8600
