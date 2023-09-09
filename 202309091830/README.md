# AqualinkD Project

## Introduction
For some background, the control unit for my home's pool and jacuzzi is in the kitchen. There are a few control features, namely the filter pumps, jet pumps, and lights.

The purpose of this project is to to control the pool and spa features from your phone, wherever you are. Imagine you're having a long day at work... and you want to get the jacuzzi nice and steamy by the time you get home.

## Hardware
I am connecting a [Raspberry Pi Zero W](https://www.raspberrypi.com/products/raspberry-pi-zero-2-w/) to my pool's contrrol panel. There are 4 wires that run from the control panel to the Raspberry Pi.  

![image](https://s3.us-west-1.amazonaws.com/zettelimages/Sun_Jul_23_06:26:30_PM_PDT_2023.png)

|Wire|Function|
|-----|--------|
|Red|VCC (+10 Volts)|
|Black|Comm Signal 1|
|Green|GND|
|Yellow|Com Signal 2|

I haven't identified what signals are running through the black and yellow wires, but it is a 2-wire communication protocol.  

## References
[AquaLink RS Troubleshooting Manual](https://data2.manualslib.com/pdf4/81/8060/805967-jandy/aqualink_rs.pdf?ce3b0be5667faf2e7bc2a4a458b5c686)

## Tags
#projects
