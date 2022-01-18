# Connecting the ST-Link Debugger to the SWD Connector Through Linux Kernel

1. First you need an [ST-Link debugger](https://www.amazon.com/s?k=st+link+debugger&ref=nb_sb_noss_2)

2. Make sure you have the st-link utils installed, see [Installing ST-Link V2 to Flash STM32 Targets on Linux](../202110191909)

3. Remove the batteries and connect the programmer using the four wires: SWDIO, SWCLK, NRST, and GND

4. Reinsert the batteries

5. Push the power button for 5s.

6. Make a backup of the firmware 
	
	st-flash --reset read <filename>.bin 0x8000000 0x20000

7. Save this file to a location

8. Compile your C/C++ source code, <insert link on info for c++ code>

9. Flash the target (WARNING: this will rewrite the default firmware from flash, so make sure steps 6 and 7 were executed correctly) 

	cd <project directory> 

	make flash

10. The test-LED should now start blinking...

## References
[fishpepper post on blinking LED](https://fishpepper.de/2016/09/16/openground-part-3-swd-st-link-debugger/)

## Tags
#embeddedSystems #STM32 #linux
