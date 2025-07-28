#!/bin//sh

decision=`kdialog --geometry 200x100+960+540 --radiolist "You \
are attempting to start the the SNEWS Backbone. 
This should be done if any of the SNEWS processes in the spill  \
server monitor are pink.
Are you sure you want to continue?" \
    NO "No" on \
    YES "Yes" off `
result=$?

if [ $result -ne 0 -o "x$decision" != "xYES" ]; then
    kdialog --geometry 200x100+960+540 --msgbox "You have elected \
to not start the SNEWS Backbone.  Exiting..."
    exit $result
fi

if [ "x$decision" == "xYES" ]; then
    kdialog --geometry 200x100+960+540 --msgbox "You have elected \
to start the SNEWS Backbone. Your wish is my command..."
    # Run the command
    ssh -X novadaq@novadaq-near-mgr-01 "/home/novadaq/DAQOperationsTools/bin/startSNEWSMessageBackBone.sh -z 1"
fi
