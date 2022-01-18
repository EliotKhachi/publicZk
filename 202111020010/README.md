# Debugging an STM32f0 on STM32CubeIDE

## Setup
For printing on an STM32F030, according to JW on ST Community, you should use a normal UART. The F030, which has a Cortex-M0 core, does not have the ITM module. Unlike the Cortex-M3, where the ITM module is found under core\_cm3.h header file.


## JW's Post
You probably can click out some basic USART-related functions in CubeMX, or have a look at the USART-related examples in CubeF0 ("firmware").

You could also write it yourself. You would need to set one USART Tx pin by setting it to AF (0b10) in respective bits in GPIOx\_MODER, and the set it to required AF in GPIOx\_AFR (have a look at the alternative functions table in datasheet (DS) for your chip) (working with GPIOx registers assumes you have already enabled clock for that GPIOx in RCC); then you would need to enable clock for given USART in RCC, set its baudrate in its baudrate register (USARTx\_BRR), enable Tx and enable UART in USARTx\_CR1, and then transmit characters by looking first at the TXE bit in USARTx\_SR and then writing the given character into USARTx\_TDR.

 

> (ITM Module (which my MCU does not have) is something like a serial port?)

It's a debug module (in Cortex-M3/M4/M7), which can be used also as a simple serial port and that's how most of the users use it.

JW
	
## References
[JW on a ST Community Thread: I get an error: Undefined referrence to 'ITM\_SendChar'. What should I do?](https://community.st.com/s/question/0D50X0000BiAKS1SQO/i-get-an-error-undefined-referrence-to-itmsendcharwhat-should-i-do)

## Tags
#STM32
