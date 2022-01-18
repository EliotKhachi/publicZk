# Setting up ST Link on Linux 

1. Verify proper ST Link driver is installed on your computer.

2. Download ST Link source code from [github](https://github.com/stlink-org/stlink/releases/tag/v1.7.0) and unzip contents into a new directory called "stlink" inside the directory "stm32"

3. Open linux terminal, navigate to "stlink" directory, and type "cmake .". You may need to install required packages. The Makefile has been generated.

4. Type "make" to build object files and binaries from Makefile in "stlink" directory.

5. cd bin to navigate to stlink/bin. Here is where the stlink binaries are.

6. Try typing st-info --version to verify proper installation of stlink from github. 

7. Copy all binaries to /usr/local/bin for easier access: sudo cp st-\* /usr/local/bin

8. Copy all .so files from "stm32/stlink/lib" to "/lib32": sudo cp \*.so\* /lib32

9. Copy all udev rules from "stm32/stlink/config/udev/rules.d/49-stlinkv\* to "/etc/udev/rules.d/": sudo cp stm32/stlink/config/udev/rules.d/49-stlinkv\* /etc/udev/rules.d/

10. Plug in ST-Link into USB Port, but don't connect target board, and type: lsusb


## References
[Installing ST-Link v2 to flash STM32 targets on Linux](https://freeelectron.ro/installing-st-link-v2-to-flash-stm32-targets-on-linux/)

## Tags
#STM32 #linux
