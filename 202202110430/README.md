# Running the Program from SRAM

* Some microcontrollers have the ability to start the program from SRAM rather than flash memory, as is conventionally done, to save power. This is done by starting up the program code in flash, copying its contents over to SRAM, and then turning off the power to the internal flash memory.  

* In the case of an MCU with only a small SRAM space, part of the program code can still be copied and ran from SRAM and flash memory is turned on only when the remaining parts are needed.

## Links
[\[Reset Handler\]](../202202110419)  

## References
1. [\[Science Direct - Reset Handler\]](https://www.sciencedirect.com/topics/engineering/reset-handler)

## Tags
#embeddedSystems
