# Ubuntu 22.04 WiFi Issues Debugging and Resolutions

My laptop wasn't connecting to Wi-Fi for some reason, when my iPhone and other devices were able to. I tried these steps, and step 6 finally resolved it:  

1. Ensure WiFi is enabled:
`nmcli radio wifi on`

2. Scan for available networks:
`nmcli device wifi list`

3. Check for any blocked WiFi. If anything is blocked, unblock it with rfkill unblock all:
`rfkill list all`

4. Update your system and drivers:
`sudo apt update && sudo apt upgrade`

5. If the issue persists, try restarting the NetworkManager service:
`sudo systemctl restart NetworkManager`

6. Check the NetworkManager configuration file and ensure the managed=true line is present under the [ifupdown] section.
`sudo vim /etc/NetworkManager/NetworkManager.conf`

## Tags
#ubuntu #networks
