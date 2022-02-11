# The SystemInit() Function

Found in the CMSIS system\_\<device\>.c file, the SystemInit function is called by the *reset handler* [\[Reset Handler\]](../202202110419) and provides all the necessary code to configure the MCU for startup:  
* setting up internal *phase locked loops*  
* configuring the MCU clock tree and internal buss structure  
* enabling the external buss if required
* **sets the CMSIS global cariable SystemCoreClock to the CPU frequency**


## Tags
#embeddedSystems #STM32
