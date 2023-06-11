# I2C Communication

## Overview
I2C is a *half-duplex* [Serial Communication](../202111021920) protocol that involves two wires:  
1. SDA (data)  
2. SCL (clock)  

Each device has an SDA and SCL wire, and all devices are connected to the same SDA and SCL buses. Each line is passively pulled up to HIGH to avoid [Floating pins](../202110192017/README.md).  
![image](https://s3.us-west-1.amazonaws.com/zettelimages/Sat_Jun_10_11:40:46_AM_PDT_2023.png)

The SDA and SCL wires work together to define the *start* and *stop* conditions, and the bits of data in between.  
![image](https://s3.us-west-1.amazonaws.com/zettelimages/Mon_May_29_07:23:02_PM_PDT_2023.png)

# Links
[1] [I2C Open-Drain ](../202112050545)  
[2] [I2C Data Line: SDA](../202112050552)  
[3] [I2C Clock Line: SCL](../202112050607)  
[4] [I2C Bus Arbitration](../202112050502)  

## References
[1] [Introduction to I2C](https://deepbluembedded.com/i2c-communication-protocol-tutorial-pic/)  
[2] [Wikipedia - I2C](https://en.wikipedia.org/wiki/I%C2%B2C)  

## Tags
#electronics #embeddedSystems
