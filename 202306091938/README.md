# Read Serial COM Ports From USB Devices - Linux

`minicom` is a serial communication program that can be used from the linux terminal to communicate with devices.  

First, identify the usb device you would like to communicate with using the `lsusb` command.  

Next, launch minicom with
`minicom -b <baud_rate> -D /dev/bus/usb/<bus_id>/<device_id>`
This should open a the communication interface to the device. Things may be printed on the screen.  

## Example

Output of `lsusb`:
```
Bus 004 Device 003: ID 0b95:1790 ASIX Electronics Corp. AX88179 Gigabit Ethernet
Bus 004 Device 002: ID 0bda:0411 Realtek Semiconductor Corp. Hub
Bus 004 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 003 Device 006: ID 0bda:1100 Realtek Semiconductor Corp. HID Device
Bus 003 Device 005: ID 248a:8327 Maxxter Wireless Receiver
Bus 003 Device 003: ID 1a40:0101 Terminus Technology Inc. Hub
Bus 003 Device 002: ID 0bda:5411 Realtek Semiconductor Corp. RTS5411 Hub
Bus 003 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
Bus 002 Device 001: ID 1d6b:0003 Linux Foundation 3.0 root hub
Bus 001 Device 002: ID 0cf3:e301 Qualcomm Atheros Communications 
Bus 001 Device 007: ID 0483:3748 STMicroelectronics ST-LINK/V2
Bus 001 Device 003: ID 0c45:6713 Microdia Integrated_Webcam_HD
Bus 001 Device 001: ID 1d6b:0002 Linux Foundation 2.0 root hub
```

Launch minicom with a baud rate of 115200 for the ST-LINK/V2 device
`minicom -b 115200 -D /dev/bus/usb/001/007`

## Tags
#linux
