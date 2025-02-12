## Restart the spill server backbone
- Check the SNEWS connections to novadaq-near-gateway-01,
- If there is no SNEWS heartbeats and no long SNEWS trigger,
- Try to login NearDet-1 on NOvA-CR-05, and restart the spill server backbone on the left menu, then there will be color cycled on the four boxes.
- Remember to check the log file, to see if it is updating by ls -l.

## Run command by hand if you see:
```bash
[novadaq@novadaq-near-mgr-02 NearDet]$ ssh novadaq@novadaq-far-gateway-01
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
@    WARNING: REMOTE HOST IDENTIFICATION HAS CHANGED!     @
@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@@
IT IS POSSIBLE THAT SOMEONE IS DOING SOMETHING NASTY!
Someone could be eavesdropping on you right now (man-in-the-middle attack)!
It is also possible that a host key has just been changed.
The fingerprint for the ECDSA key sent by the remote host is
SHA256:6rvdfEFbeIua8oa2kU4ckqI4kuywVPMnJ0lWuWcpgPM.
Please contact your system administrator.
Add correct host key in /home/novadaq/.ssh/known_hosts to get rid of this message.
Offending ECDSA key in /home/novadaq/.ssh/known_hosts:242
Password authentication is disabled to avoid man-in-the-middle attacks.
Keyboard-interactive authentication is disabled to avoid man-in-the-middle attacks.

```
Check the bash history on novadaq-near-mgr-01 and run the command.
