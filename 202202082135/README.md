# How to Connect USB Devices to WSL

## Setup
1. Make sure you have a WSL kernel version of 5.10.60.1 or later, and you are running a WSL 2 distro.  
```sh
uname - a
```  
2. Install the user space tools for USB/IP and a database of USB hardware indentifiers: From within WSL on Ubunto 20.04 LTS, run  
```sh
sudo apt install linux-tools-5.4.0-77-generic hwdata  
sudo update-alternatives --install /usr/local/bin/usbip usbip /usr/lib/linux-tools/5.4.0-77-generic/usbip 20  
```
## Attaching a device
3. Connect STLINK device to usb hub on computer  
4. List all USB devices connected to Windows *as administrator*  
```sh
gsudo usbipd wsl list  
```
5. Identify the bus ID of the device you'd like to attach to WSL and run  
```sh
usbipd wsl attach --busid <busid>  
```
6. From within WSL, list the attached USB devices to verify that WSL recognizes them   
```sh
lsusb  
```
7.  Once your done using the device in WSL, you can physically disconnect the device or detach the device *as administrator*  
```sh
gsudo usbipd wsl detach --busid <busid>  
```

## References
1. [Connecting USB devices to WSL - Microsoft Docs](https://devblogs.microsoft.com/commandline/connecting-usb-devices-to-wsl/)

## Tags
#WSL
