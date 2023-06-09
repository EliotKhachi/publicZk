# Flash STM32 MCUs on Linux with ST-Link/V2

Method 1: STM32CubeIDE

Method 2: Open Source

1. Download the latest [GNU ARM Toolchain](https://developer.arm.com/downloads/-/gnu-rm) for Linux. [Compression and Extraction - tar, gzip](../202302031659/README.md)

2. Download open-source stlink debugger from [github.com/stlink-org/stlink](https://github.com/stlink-org/stlink).  

3. Configure your paths to the binaries. [Adding Binaries to Path - Linux](../202306091810/README.md)

4. Connect your ST-Link to your MCU (3.3V, GND, SWDIO, SWCLK). Find your MCU's datasheet to find out which pins to connect to.  

5. Connect your ST-Link to your computer. Run `st-info --probe`. You should get the response: `Found 1 stlink programmers`. Otherwise, go back to step 1.  

6. Flash: `sudo st-flash write <file_to_flash>.bin 0x08000000`. Reset: `sudo st-flash reset`.  

## References
[freeelectron Blog - Installing ST-Link V2 to Flash STM32 Targets on Linux](https://freeelectron.ro/installing-st-link-v2-to-flash-stm32-targets-on-linux/)  

## Tags
#STM32
