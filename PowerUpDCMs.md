## Power up DCMs.
The scripts to bring up high voltages on APDs is located on **`novadaq@novadaq-far-mgr-02`**, we can jump twice to connect it from **`novashift@nova-cr-01`**.
Try to ssh the DCM to see if it is down if we cannot confirm from the CSS-GUI.
```bash
ksu novadaq
ssh root@dcm-1-02-03
```
