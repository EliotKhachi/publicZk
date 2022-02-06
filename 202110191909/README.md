# Installing ST-Link V2 to Flash STM32 Targets on Linux

1. First make sure you have libusb-dev library installed:

	sudo apt-get install libusb-1.0-0-dev

2. Download, build and install the latest ST-LINK utilities:

	git clone https://github.com/texane/stlink stlink.git

	cd stlink
	
	make

install binaries:

	sudo cp build/Debug/st-* /usr/local/bin

install udev rules:
	
	sudo cp etc/udev/rules.d/49-stlinkv* /etc/udev/rules.d/

and restart udev:

	sudo udevadm control --reload

## References
[Installing ST-Link on Linux](https://fishpepper.de/2016/09/16/installing-using-st-link-v2-to-flash-stm32-on-linux/)

## Links
<insert link on how to connect ST-Link to flash stm32 devices>

## Tags
#embeddedSystems #STM32
