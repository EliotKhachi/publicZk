# RCC: C Code Example Using AHB to Enable GPIO Clock for Port C 

RCC stands for **Rest Clock and Control** and has many registers [RCC Registers](). AHB stands for the **Advanced High Performance Bus** and it has a peripheral clock enable register for GPIO.
[Advanced High Performance Bus](../202110192154)
 
	#include "stm32f0xx.h"

	int main (void)
	{	
		// Enable the GPIO Clock for Port C using the AHB and RCC
		RCC->AHBENR != RCC_AHBENR_GPIOCEN
		//RCC_AHBENR_GPIOCEN can be replaced by (1 << 19) or (2^19)	

* RCC is a struct type variable in C++, AHBENR is a member of that struct.

* '->' operator (member access symbol) is used to access that member.

* '!=' is a logical NOT operator

* '<<' is a binary left shift operator

* *RCC\_AHBENR\_GPIOCEN* is short hand for a number in binary with the 19th bit being a 1 and all other bits 0 (the first bit being indexed at 0). *RCC\_AHBENR\_GPIOCEN* is equal to 0x00080000 in hexadecimal. (Reference 2)

* GPIOCEN stands for GPIO Clock Enable.


## References
1. [How to Output to a Pin to Blink an LED, Part 2](https://www.youtube.com/watch?v=uNuxK1ARuwU&list=PL6PplMTH29SHgRPDufZhfMRoFwRAIrzOp&index=7)

## Links
[Bitwise Operators in C ](../202110200539)
[Advanced High Performance Bus](../202110192154) 

## Tags
#STM32 #embeddedSystems
