# Using I2C for any slave device on STM32 with HAL

Most, if not all, STM32 microcontrollers can establish at least one I2C bus, giving you the ability to read/write data among 128 devices. [I2C Communication](../202111020424/README.md)  

## Step 1 - Establish an I2C Bus on Your Microcontroller
In STM32CubeIDE, you can easily configure your clock (SCL) and data (SDA) lines for I2C communication.  

1. Open your project's .ioc file in the editor, and under the *Pinout & Configuration* tab, expand the *Connectivity* category.  
2. Click on an I2C channel, for example, *I2C1*. The window should expand, showing the I2C configuration options. Change the I2C mode from *Disable* to *I2C*.  
3. Change any other Configuration settings you would like, such as the *I2C Speed Mode*.  
4. You should see the respective pins light up green on your microcontroller pinout diagram to the right.  
5. Click File > Save > Generate Code  

## Tags
#STM32 #embeddedSystems
