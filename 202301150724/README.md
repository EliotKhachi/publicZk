# React Errors Encounters

|Error Message|Meaning|Solution|
|-------------|-------|--------|
|ENOSPC: System limit for number of file watchers reached|
|This error message tells us that the number of files monitored by the system has reached the limit, thereby causing the command execution `npm start` to fail.|The solution is to modify the number of system monitoring files. For Ubuntu, add `fs.inotify.max_user_watches=524288` at the bottom of `/etc/sysctl.conf`.|


## Tags
#react
