# React Errors Encounters

|Error Message|Meaning|Solution|
|-------------|-------|--------|
|ENOSPC: System limit for number of file watchers reached|This error message tells us that the number of files monitored by the system has reached the limit, thereby causing the command execution `npm start` to fail.|The solution is to modify the number of system monitoring files. For Ubuntu, add `fs.inotify.max_user_watches=524288` at the bottom of `/etc/sysctl.conf`.|
|*Insert some error message regarding conflicting versions or incompatible dependencies*|This type of error message is telling you that there are conflicting packages in your react application.|The solution is to delete `node_modules` and `package-lock.json` in your project folder and `npm install` again. Run `npm start` and look for any other errors in your app that point out a dependency conflict. You can `npm uninstall <package-name>` and `npm install <package-name>@<version-number>` until you resolve all issues. If you bootstrapped a react-native app using the React Native CLI, you can configure these versions as you wish to resolve conflicts. However, if you bootstrapped with Expo, you must ensure the versions that you install are compatible with the overarching expo app version.|

## Tags
#react
