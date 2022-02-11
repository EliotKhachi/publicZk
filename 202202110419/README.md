# Reset Handler

The *reset handler* is analagous to startup code. It is the first piece of software to execute after a system reset and begins in the starting address of the microcontroller's flash memory. It is used to set up the configuration data for the C startup code; in projects using CMSIS-CORE for Cortex microcontrollers, the reset handler executes the *SystemInit()* function [\[The SystemInit() Function\]](../202202110421).  

## Tags
#embeddedSystems
