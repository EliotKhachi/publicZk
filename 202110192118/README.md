# Types of GPIO Registers And Their Bit Configurations 

## Used to Configure a Pin
1. **Mode R** - Mode Register - This register allows you to set any GPIO port and pin to a particular mode. There are 4 modes denoted by 2 bits XX (The first X is *called* bit 1 and the second X is *called* bit 0. This is to be distinguished from what *value* (0 or 1) the bits actually hold.
	* Input Mode (reset state): XX = 00 (bit 1 = 0, bit 0 = 0) 
	* General purpose output mode: XX = 01 (bit 1 = 0, bit 0 = 1)
	* Alternate function mode: XX = 10 (bit 1 = 1, bit 0 = 0)
	* Analog mode: XX = 11 (bit 1 = 1, bit 0 = 1)
	
2. **Otype R** - Output Type - Determines whether the pin is open drain or push/pull . There are 2 modes denoted by 1 bit X. Bits 15:0 in the register can be configured, Bits 31:16 are reserved and must be kept at reset value.
	* Open Drain - X = 1
	* Push/Pull - X = 0

3. **OSpeed R** - Output Speed. Determines the speed of the signal (clock frequency?). There are 3 modes denoted by 2 bits XX (The first X is *called* bit 1 and the second X is *called* bit 0. This is to be distinguished from what *value* (0 or 1) the bits actually hold.
	* Input Mode (reset state): XX = 00 (bit 1 = 0, bit 0 = 0) 
	* Low Speed - XX = X1 (bit 1 = 0 or 1, bit 0 = 1)
	* Medium Speed - XX = 01 (bit 1 = 0, bit 0 = 1)
	* High Speed - XX = 11 (bit 1 = 1, bit 0 = 1)

4. **PUPUDR** - Pull-up/Pull-down Register. There are 3 modes denoted by 2 bits XX. 
	* No pull-up, pull-down - XX = 00
	* Pull-up - XX = 01
	* Pull-down - XX = 10
	* Reserved - XX = 11

## Used to Actually Output to a Pin
1. **BSRR** - Bit Set Reset Register - 32 total bits. 

	15 14 13 12 11 10 9  8  7  6  5  4  3  2  1  0 -> pin #

	0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0 -> reset bits

	0  0  0  0  0  0  0  0  0  0  0  0  0  0  0  0 -> set bits

To turn on any given pin, set the *set* bit to 1 for that pin.
To turn off any given pin, set the *reset* bit to 1 for that pin.

2. **BRR** - Bit Reset Register - 16 total bits. Acts just like the *set* register on the **BSRR**.

## Used to Enable the GPIO
**RCC** - Reset Clock & Control - This register controls a few buses located on the processor. The **RCC** is used to enable certain buses and their clocks. For instance, the **AHB** (Advanced High Performance Bus) can be enabled through the **AHBENR** register, which is under the **RCC**.[RCC: C Code Example Using AHB to Enable GPIO Clock for Port C ](../202110200251)

## References
[How to Output to a Pin to Blink an LED](https://www.youtube.com/watch?v=o0A0zTdf3zY&list=PL6PplMTH29SHgRPDufZhfMRoFwRAIrzOp&index=6)

## Links
[RCC: C Code Example Using AHB to Enable GPIO Clock for Port C ](../202110200251)


## Tags
#embeddedSystems
