# Arch - Connect to Your Network

Run the following commands in order:

1. `ip addr show`   

2. `iwctl`  

3. `device list`  

4. `station wlan0 scan`  

5. `station wlan0 get-networks`  

6. `station wlan0 connect "network-name"`  

7. `# enter password`  

8. `Ctrl-d # to exit`  

9. `ip addr show # verify connectivity`  

10. `ping -c 5 8.8.8.8 # verify connectivity`  

## Tags
#linux #arch
