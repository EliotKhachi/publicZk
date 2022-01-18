# STM32 Interfacing With an LCD 

## LCD Overview
An LCD has 15 pins:
* VSS - Ground
* VDD - DC Voltage power supply of 5V
* V0 - Control brightness/contrast via potentiometer
* E - Enable
* RS - Register Select
* RW - Read/Write
* 8 Data pins D0 to D7

## Circuit
1. Connect VDD to 5V power supply.
2. Connect VSS to ground.
3. Connect V0 directly to 5V for max brightness or through a potentiometer to control brightness.
4. Select and connect 11 pins (you will likely need to select from different ports) from the microcontroller to the LCD to output high or low to E, RS, RW, and the data pins.

## Sending Instructions
After connecting the pins of the LCD to the microcontroller, instructions can be sent to the LCD by setting microcontroller's pins to high or low in a specified manner dictated by the LCD's *timing characteristics* as outlined in its datasheet. A typical sequence for an instruction is: 

1. Set RS and RW pins (to high or low depending on intent)
2. Timing Delay (specified in datasheet)
3. Enable LCD (set E pin to 1)
4. Set data pins D0-D7
5. Timing Delay (specified in datasheet)
6. Disable LCD (set E pin to 0)

Before sending another instruction from the MPU, the busy flag on the LCD's chip must be set to 0 (not busy state), otherwise the time in between instructions will take much longer than usual.

---
**What Are The Data Pins?**
Each data pin is a bit in a byte that is used to represent a character (generally). These pins contain the information you are trying to communicate.

---
**What's the Point of the Timing Characteristic?**
If you were to just set the data pins on the microcontroller to represent a byte, and send it to the LCD, the LCD has no idea how to interpret it. In order to send information to the LCD, you need to take careful note of its *timing characteristics* and *instruction descriptions*, which are outlined in the device's datasheet. The *timing characteristics* give structure to the data being sent so that the LCD can interpret it properly.

---


## References
[LCD 1602A DataSheet](http://www.datasheetcafe.com/lcd-1602a-datasheet-lcd-module/)

[BuildYourCNC ARM Microntroller Series - How to Interface an LCD](https://www.youtube.com/watch?v=877SPdwuuLA&list=PL6PplMTH29SHgRPDufZhfMRoFwRAIrzOp&index=27)

## Tags
#STM32 #embeddedSystems
