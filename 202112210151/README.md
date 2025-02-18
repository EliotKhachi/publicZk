# Setting Up WSL for Embedded Development  
1. Make sure WSL kernel version is 5.10.60.1 or later and you are usiing a WSL 2 distro. Run this:

	uname -a

2. Install user space tools for USB/IP & database of USB hardware identifiers on Ubuntu through WSL. Run this:
	
	sudo apt install linux-tools-5.4.0-77-generic hwdata

3. Edit /etc/sudoers.tmp so the root can find the usbip command. On Ubuntu, run this:

	sudo visudo

Alternatively you can navigate to /etc and edit using vim:
	
	sudo vim sudoers

4. Add usr/lib/linux-tools/5.4.0-77-generic to the beginning of the secure path. After editing the line should look like this:

	Defaults secure_path="/usr/lib/linux-tools/5.4.0-77-generic:/usr/local/sbin:..."

**NOTE:** You may need to configure udev rules to allow non-root users to access the device. I.e. for using embedded devices with openocd, you must copy*share/openocd/contrib60-openocd.rules* to the /etc/udev/rules.d folder.

After updating your rules, run this:

	udevadm control --reload

If you get the error, "Failed to send reload request: No such file or directory", run

	sudo service udev restart

then run it again.

5. Open Windows PowerShell (WPS) and Windows Subsystem for Linux (WSL) in separate tabs

6. Connect ST-link device

7. In WPS run
	usbipd wsl list
to see all the available devices.

8. In WPS run
	gsudo usbipd wsl attach --busid <device-id>
to attach a "fake driver" to the device so windows can recognize it. gsudo is used for admin privileges.

9. Congratulations! You can now use stflash in WSL to flash your microcontroller.

## Tags
#embeddedSystems
