# Wake On Lan Using Raspberry Pi

## Prerequisites
**Hardware Configuration** - In order to Wake On Lan (WOL) a computer using a Raspberry Pi, the Pi must always be on and connected to your computer via ethernet. Your computer need not be on, of course, for this is the purpose of WOL.  
---
**Network**
* For local WOL capabilities, the Pi must be connected to the router on the local network. This should occur automatically for most models. For the RPI 3B+, and perhaps other models, you must first SSH via ethernet and run `sudo apt-get update && `sudo apt-get dist-upgrade` to enable the onboard wireless LAN chip [MagPi RPi 3B+ Specs and Benchmarks](https://magpi.raspberrypi.com/articles/raspberry-pi-3bplus-specs-benchmarks)
* For WAN (World Area Network) WOL capabilities, you must port forward your Pi to the internet --> [202207030601](../202207030601) - Port Forwarding to the Internet <--  
---
**Software** - Run `sudo apt-get install etherwake`. To wake up a PC simply use `etherwake -i eth0 AA:BB:CC:DD:EE:FF`. Where  
* (-i) is the interface specified to push the magic packet via a correct interface  
* AA:BB:CC:DD:EE:FF is the MAC address of the device you want to wake up.  

# Tags
#linux #networks #pi
