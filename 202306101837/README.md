# Communicate with any slave device using I2C on STM32 with HAL

Most, if not all, STM32 microcontrollers can establish at least one I2C bus, giving you the ability to read/write data among 128 devices. [I2C Communication](../202111020424/README.md)  


**Step 1:** [Establish an I2C Bus on your STM32 Microcontroller](../202306112116/README.md)

**Step 2:** Familiarize yourself with your slave device(s) 
1. What is your device's 7-bit or 8-bit address?  
2. What do you need to configure on your device before using it? I.e. what registers do you need to write to for configuration settings such as waking it up, setting a sample rate speed, etc.?   
3. 
**Step 3:** [Use STM32 HAL libraries to read and write data via I2C](../202306112223/README.md)

# References
[Matej Blagsic Github Example](https://github.com/prtzl/Embedded_videos/tree/master/026_HAL-I2C)

## Tags
#STM32 #embedded
