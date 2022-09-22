# Installing CentOS 

## Issue
CentOS 7 comes with linux kernel 3.10, which doesn't support my laptop's WiFi 6E chip out of the box. I need to upgrade to kernel 5.0+ for support, however, I can't upgrade the kernel without internet. So, step 1 is to get install my WiFi chip's driver.  

## Install Intel Wi-Fi 6E (Gig+) Driver
There are 3 different types of these drivers: 
[Intel Wi-Fi 6E (Gig+) Series](https://ark.intel.com/content/www/us/en/ark/products/series/204838/intel-wi-fi-6e-gig-series.html)

1. AX411  
2. AX211  
3. AX210  
---

To find out which one my laptop has...

1. Boot a linux distro that can already recognize my chipset --> [202209210217](../202209210217) - Writing Disk ISO Images to USB on Linux  

2. [202209220144](../202209220144) - Find Your Wireless Chip Manufacturer and Model

3. Download the linux driver for your Wifi chip set: [Linux Support for Intel Wireless Adapters](https://www.intel.com/content/www/us/en/support/articles/000005511/wireless.html)  

	* 

## References
[WiFi Not Working - Ubuntu](https://www.maketecheasier.com/fix-wi-fi-not-working-ubuntu/)

## Tags
#linux
