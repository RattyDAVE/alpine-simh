OpenVMS VAX 7.3 template. You will need to source a copy of the install CD. Called **OpenVMS_VAX_7.3.img.bz2** and also the licenses.

https://www.hpe.com/emea_europe/en/servers/openvms/licensing.html or **LMFgen**

# To Install

At the shell:

```
vax8600 vax8600.ini
```

Then in the emulator:

```
boot dua3
(Enter DATE) 09-jan-2018 12:00
(YES for all devices available)
backup dua3:vms073.b/save_set dua0:
(At the next backup prompt press CTRL-E to go back to the simh prompt)

boot cpu
set boot dua0
boot
(Enter DATE)
(If you are just going to run system then you can leave the system disk name as default. Otherwise give a meaningful name)
DUA2
Y (OpenVMS media ready)
Y (OpenVMS library)
Y (OpenVMS optional)
Y (MSGHLP)
(Enter for default location)
N (OpenVMS Management Station)
N (DECwindows base support)
N (DECnet-Plus)
Y (DECnet Phase IV)
Y (Confirmation to install the 4 options)
(Wait! - Really it takes a long time and it looks like it is doing nothing. Go watch a film.)
```

MORE TO DO HERE!

Last part!


To install the PAK file (Licenses). When installing and you get to the stage.

```
* Do you want to register any Product Authorization Keys? (Y/N):
```

Press **N** 

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
