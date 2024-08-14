## Power up DCMs.
The scripts to bring up high voltages on APDs is located on **`novadaq@novadaq-far-mgr-02`**, we can jump twice to connect it through **`novashift@nova-cr-01`**.
```bash
ssh -AKXY novashift@nova-cr-01
ssh -AKXY novadaq@novadaq-far-mgr-02
```
Try to ssh the DCM from the control room machine to see if it is down if we cannot confirm it from the CSS-GUI.
```bash
ksu novadaq
ssh root@dcm-1-02-03
```
Go to the directory where the scripts live.
```bash
cd /home/novadaq/Online/pkgs/PowerUtilities/scripts/
```
The DCM number range is from 1 to 12, 1 is the far end of the top modules, 6 is the near end of the top modules, and 12 is the most bottom one.
For example, if we want to power up the top part of the FarDet. We can loop over the DCMs on each diblock.
```bash
for dcm in `seq 1 6` ; do DCM_On.sh 11 $dcm ; done
```
Sometimes, there will be some DCMs still in trouble, we should power cycle it by using **`DCM_Cycle.sh`** then type the diblock number and DCM number.

