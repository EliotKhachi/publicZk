# AqualinkD Project

## Introduction
The purpose of this project is to to control the pool and spa features from your phone, wherever you are. Imagine you have a long day at work... and you want to get the jacuzzi nice and steamy by the time you get home :).

## Hardware
I am connecting a [Raspberry Pi Zero W](https://www.raspberrypi.com/products/raspberry-pi-zero-2-w/) to my pool's contrrol panel. There are 4 wires that run from the control panel to the Raspberry Pi.  

Jandy's Power Center RS485 Connection Locations (Red, 4-pin connector at the top left)  
![image](https://s3.us-west-1.amazonaws.com/zettelimages/Sat_Sep__9_11:51:26_AM_PDT_2023.png)

RS485 Wire Connections
![image](https://s3.us-west-1.amazonaws.com/zettelimages/Sat_Sep__9_11:52:41_AM_PDT_2023.png)

|Wire|Function|
|-----|--------|
|Red|VCC (+10 Volts)|
|Black|Comm Signal 1|
|Green|GND|
|Yellow|Com Signal 2|

I haven't identified what signals are running through the black and yellow wires, but it is a 2-wire communication protocol.  

## References
[AquaLink RS Installation Manual](https://cdn.fluidrausa.com/-/media/zodiac/global/downloads/0748-91071/6594.pdf?rev=8ef7e65bffb247efb962fe23e434b87e)

## Tags
#projects
