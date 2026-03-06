## Terminal frozen when kill partition 1
Just `CTRL-C` the kill partition terminal and run it again (and 2nd time).
## Blank DCM in FEB rate error Monitor
Should be a whole DCM out of sync. It usually crashes a run. If it hasn't, hit the blue sync button on the TDU control.
Eventually the "Low number of FEBs" will clear as well.  That red plot is a lagging indicator.

## ND MsgAnalyzer 1

If other things are reasonable,  the correct sequence is, from the DAQAppMgr:

- Restart-DDS for MessageFacilityServer
- Then just restart-App for MessageAnalyzer and MessageViewer as needed
## FD MsgAnalyzer 0
If on `FarDet-1`, it starts from yellow, and after we stop and start DiskWatcher on `FarDet-2`, it turns into red. Then we should try restarting the P0 dds:

```bash
ssh -AKXY novadaq@novadaq-far-mgr-01
vim DAQOperationsTools/bin/startMsgAnalyzer0.sh
setup_online -z 0
ospl stop
ospl start
```
Then on `FarDet-2`, stop and start DiskWatcher again.

### NSSSpillForwarder not running
login as novadaq to novadaq-near-mgr-01 to run this:
```bash
[novadaq@novadaq-near-mgr-01 ~]$ /home/novadaq/DAQOperationsTools/bin/startBeamSpillBackBoneND.sh -z 1
```

### Reboot DCM
Can not reboot
```bash
rgang.py -l root dcm-1-02-03 reboot
```
ssh: connect to host dcm-1-02-03 port 22: No route to host

### Error message keeps poping up when ending a run.
Directly click "kill partitions" button on the left bar menu.


### TDU near 3
TDU Near 3 shows as defunct on ND timing status window in nd-vnc-01
On left bar menu, reset the TCR Monitor on ND.
