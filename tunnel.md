## Bad local forwarding
```
tools:     port 91 in use
tools: --- Check Port: 92
tools:     port 92 in use
tools: --- Check Port: 93
tools:     port 93 in use
tools: --- Check Port: 94
tools:     port 94 in use
tools: --- Check Port: 95
tools:     port 95 in use
tools: --- Check Port: 96
tools:     port 96 in use
tools: --- Check Port: 97
tools:     port 97 in use
tools: --- Check Port: 98
tools:     port 98 in use
tools: --- Check Port: 99
tools:     port 99 in use
tools: --- Check Port: 100
tools:     port 100 in use
tools: --- Check Port: 101
tools:     port 101 in use
tools: --- Check Port: 102
tools:     port 102 free
tools:        - free port found: 102
tools:        - establishing ssh tunnel
Bad local forwarding specification '102:localhost:0'
tools:        - confirming tunnel established
tools: ssh tunnel creation threw an error, check stdout/stderr, exiting
+ '[' -e /Users/sz/myROC/NovaRemoteControlRooms/JustDoIt.lock ']'
++ which notify-send
+ '[' ']'
++ which osascript
+ '[' /usr/bin/osascript ']'
+ osascript -e 'display notification " Removing Lockfile " with title "JustDoIt" '
+ rm /Users/sz/myROC/NovaRemoteControlRooms/JustDoIt.lock
```
