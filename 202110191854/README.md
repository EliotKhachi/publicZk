# Overview: Programming ARM Cortex (STM32) under GNU/Linux 

## What We Need
* STM32 microcontroller
* programmer and debugger - **gcc-arm-none-eabi**
* GNU/Linux operating system
* Driver for MCU: CMSIS-CORE - Cortex Microcontroller Software Interface Standard CORE  

## What does the CMSIS-CORE Contain? What's it for?
The CMSIS-CORE allows the user to access the processor core and device peripherals by defining the Hardware Abstraction Layer (HAL).  
The CMSIS files contain definitions for peripheral access to all device peripherals, provides helper functions that access the core registers, and startup and system configuration code. 


## Minimal Project Configuration
* project directory contains
	* **main.c** - main program  
	* **system.c** - implementation of CMSIS *system_stm32f0xx.h* (system initialization - clock source, flash memory configuration etc.)  
	* **Makefile** - compiles, links, and writes code to MCU's flash memory  
* copy startup code into project directory  
* copy linker script into project directory  
* compile, link and write code to MCU's flash memory (using Makefile)

## Startup Procedure



## References
[CSDN Blog - Programming ARM Cortex (STM32) under GNU/Linux](https://blog.csdn.net/sharrring/article/details/80195804)  
 
## Tags
#embeddedSystems #STM32
