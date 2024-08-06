#!/bin/sh
# setup of local options and paths for ROC script functions
#
# location of hashed passwordfile for control room VNC sessions
export NOVACRPWDFILE=/Users/sz/myROC/novacrpwdfile
# location of NovaRemoteControlRooms package (where installed from CVS)
#export NOVARCRPATH=~/NovaCR3/NovaRemoteControlRooms
export NOVARCRPATH=/Users/sz/myROC/NovaRemoteControlRooms
# location of NovaControlRoom package (separate package installed from CVS)
#export NOVACRSCRIPTSPATH=~/NovaCR3/NovaControlRoom/scripts
export NOVACRSCRIPTSPATH=/Users/sz/myROC/NovaControlRoom/scripts
# List of VNC options for you local control room's taste.  Just space 
# delimit list of vnc options for your version of the VNC viewer.
#RealVNC options
#export NOVARCRVNCOPTIONS="-AcceptBell=False -Quality=High -Scaling=2560x2880 "
#Tiger VNC options
#export NOVARCRVNCOPTIONS="-FullScreen RemoteResize=0"
#export NOVARCRVNCOPTIONS="-FullScreen -FullScreenMode=all RemoteResize=0"
# where to find your kerberos config.  (Needed in GetTickets, probably)
#export KRB5_CONFIG=~/.krb5/krb5.conf
# Choose your VNC viewer:
#export VNCVIEWER_CMD='/home/novashift/bin/vncviewer'
#removed previous version which had a symlink to older version of tigervnc
export VNCVIEWER_CMD='/Applications/VNC Viewer.app/Contents/MacOS/vncviewer'
#export VNCVIEWER_CMD='vncviewer'
alias python=python3
