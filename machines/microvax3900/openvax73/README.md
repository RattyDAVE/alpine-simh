OpenVMS VAX 7.3 template. You will need to source a copy of the install CD. Called **OpenVMS_VAX_7.3.img.bz2** and also the licenses.

https://www.hpe.com/emea_europe/en/servers/openvms/licensing.html or **LMFgen**

# To Install

At the shell:

```
install_microvax3900.sh
```


Users that are setup and passwords.
```
SYSTEM SYSTEMpassword
SYSTEST SYSTESTpassword
FIELD FIELDpassword
```

Then once installed you can do the post installation tasks. You will need to set TCPIP to your requirements. I suggest in Client, FTP and TELNET.


```
set proc/priv=all
mount/system dua1 data1
mount/system dua2 data2

set def sys$system
edit modparams.dat

#Put the following lines. This is needed for TCP/IP
ADD_GBLPAGES=10000
ADD_GBLSECTIONS=100
ADD_NPAGEDYN=800000
ADD_NPAGEVIR=800000
MIN_SPTREQ=6000
#CTRL-Z to save and exit.

SET TERMINAL/INQUIRE
SET TERMINAL/NOWRAP
CREATE PAKS.COM
#Cut and paste from the PAK file, then press CTRL-Z to save.
#Then enter the following to run.
@PAKS.COM


mount/over=id dua3:
set def dua3:[tcpip_vax051.kit]
@sys$manager:tcpip$config

edit sys$manager:systartup_vms.com

#Put the following 3 lines in at the end near the the EXIT.
mount/system dua1 data1
mount/system dua2 data2
@sys$startup:tcpip$startup
#CTRL-Z to save and exit.

@SYS$UPDATE:LIBDECOMP.COM

set def sys$update
@autogen getdata shutdown nofeedback
```
