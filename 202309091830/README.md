# AqualinkD Project

## Introduction
The purpose of this project is to to control the pool and spa features from your phone, wherever you are. Imagine you have a long day at work... and you want to get the jacuzzi nice and steamy by the time you get home :).

![image](../resources/zettel-images/202309091830/Sat_Sep_23_07:22:02_PM_PDT_2023.png)

## Hardware
We'll be using a [Raspberry Pi Zero W](https://www.raspberrypi.com/products/raspberry-pi-zero-2-w/) (RPI) to host our web app and communicate with the Aqualink Control Panel. Before hooking up the RPI, make sure you can SSH into it [[SSH into a Raspberry Pi ](../202206170251)].   

The control panel has 4 wires: Data +, Data -, GND, and 10V VCC.

![image](../resources/zettel-images/202309091830/Sat_Sep_23_07:22:36_PM_PDT_2023.png)

The wires make up the RS485 communication protocol. A USB-RS485 cable adapter can be used to communicate between the panel and the RPI. The cable will also provide power to the RPI through a 5V voltage regulator.   

Jandy's RS485 Pin Connector Colors  
![image](../resources/zettel-images/202309091830/Sat_Sep__9_11:52:41_AM_PDT_2023.png)

FTDI USB-RS485 Cable Connector Colors  
![image](../resources/zettel-images/202309091830/Sat_Sep__9_11:55:02_AM_PDT_2023.png)

**Compile into a table...**  
|Function|Jandy Color|Jandy Pin|RS485 Color|
|--------|-----------|---------|-----------|
|Data +  | BLACK     | 2       | ORANGE    |
|Data -  | YELLOW    | 3       | YELLOW    |
|10V VCC | RED       | 1       | RED       |
|GROUND  | GREEN     | 4       | BLACK     |

RPI connected:  
![image](../resources/zettel-images/202309091830/Sat_Sep_23_07:23:07_PM_PDT_2023.png)  

Finally, ssh into the raspberry pi and follow the [installation directions](https://github.com/sfeakes/AqualinkD)  

You should now be able to access the AqualinkD web app from your browser, as shown below:  
![image](https://www.eliotkhachi.dev/resources/zettel-images/Wed_Feb_28_02:50:00_PM_PST_2024.png)

## References
[AqualinkD Github Project](https://github.com/sfeakes/AqualinkD)  
[AquaLink RS Installation Manual](https://cdn.fluidrausa.com/-/media/zodiac/global/downloads/0748-91071/6594.pdf?rev=8ef7e65bffb247efb962fe23e434b87e)  
[FTDI USB-RS485 DataSheet](https://ftdichip.com/wp-content/uploads/2023/07/DS_USB_RS485_CABLES.pdf)  

## Tags
#projects
