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
