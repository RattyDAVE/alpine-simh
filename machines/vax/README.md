




OpenVMS VAX 7.3 template. You will need to source a copy of the install CD. Called **OpenVMS_VAX_7.3.img.bz2** and also the licenses.

https://www.hpe.com/emea_europe/en/servers/openvms/licensing.html or **LMFgen** 

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
