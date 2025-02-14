# Using MacOS as a NOvA DAQ shifter tool

Please read the Wiki page for more tips.

The scripts can be found under
**`https://github.com/novaexperiment/novadaq/tree/034639b48796a057c4356aebff790f42f98947cb/pkgs/NovaRemoteControlRooms`**
or 
```bash
/exp/nova/app/users/biaow/myROC/
```
## Linux OS
For linux user, the VNC is ready to connect, run
```bash
 bash JustDoIt.sh FarDet-1
```
will connect to the DAQ server. It has been tested on Ubuntu 22 and AL9.

## MacOS 14.5

To check if the VNC viewer is installed usefully, type 
```bash
/Applications/VNC\ Viewer.app/Contents/MacOS/vncviewer
```
in terminal and see if the screen pop-up.

Then edit the **`Tools.py`** with
```python
    vncviewer_cmd=os.path.expandvars("${VNCVIEWER_CMD}")
    to_run = [ vncviewer_cmd , "-Shared" ]
```


and in **`SetupROCOptions.sh`** we want
```bash
export VNCVIEWER_CMD='/Applications/VNC Viewer.app/Contents/MacOS/vncviewer'
#export VNCVIEWER_CMD='vncviewer'
alias python=python3
```
so that each time we run **`JustDoIt.sh`**, the Real VNC viewer is ready to connect. 

- The password is the common password for remote control room since 2017.

## Connect to NearDet-4 with MacOS 15.3

We now run Synoptics display on NearDet-4 server and we have to update
`pkgs/NovaControlRoom/scripts/Connections.py`
and
`pkgs/NovaRemoteControlRooms/Tools.py`

And on MacOS 15, we should use the 3-year-old version of `JustDoIt.sh` to connect smoothly.
