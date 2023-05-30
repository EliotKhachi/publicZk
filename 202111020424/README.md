# I2C Communication

## Overview
I2C is a communication protocol that can be used to control many devices (up to 127 devices) in a microcontroller circuit. Each device has a unique ID (either hardcoded in their circuit, or configurable within the IDE, i.e. servos). 

Two wires are used to communicate: SDA (data) and SCL (clock). Each device has an SDA and SCL wire, and the microcontroller has an SDA and SCL wire. All devices are connected to the same SDA and SCL buses.

---
Elements of I2C Transactions

S | Address (7-Bit) | R/W | ACK | DATA BYTE | ACK | P

* Start Condition (S) - Initiated when the SDA line changes from HIGH to LOW while the SCL line is HIGH
* Stop Condition (P) - Initiated when the SDA line changes from LOW to HIGH while the SCL line is HIGH

*NOTE:* The reason why the above conditions work consistently is because the rule for communication between the start and stop conditions is: the HIGH or LOW state of the SDA line can only change when the clock signal on the SCL line is LOW

* Repeated Start (Restart) Conditon (Sr) - Initiation is identical to the Start Condition
* Acknowledge ACK (A) - During this clock pulse, the transmitter releases the SDA line (to HIGH) to give the opportunity for the receiver to pull the SDA line LOW, signaling an acknowledge. 
* Not Acknowledge NACK (~A) - If the receiver does not pull the SDA line low to acknowledge, the SDA line remains high. Here are the possible causes:

*NOTE:* Each byte must be followed by an Acknowledge bit

* Address + R/W
* Data Byte
 
## Circuit
Each bus needs to be pulled-up to 3.3V via pull-up resistor. The resistor's resistance value is dependent on the capcitance on the line, which is dependent on the number of devices and clock speed:

R = 		     time constant		          1000 ns 
    ----------------------------------------------, i.e. ---------
    0.8743 * capacitance measured on the I2C lines       0.8473*C_b

# Links
[1] [I2C Open-Drain ](../202112050545)  
[2] [I2C Data Line: SDA](../202112050552)  
[3] [I2C Clock Line: SCL](../202112050607)  
[4] [I2C Bus Arbitration](../202112050502)  

## References
[1] [Introduction to I2C](https://deepbluembedded.com/i2c-communication-protocol-tutorial-pic/)  
[2] [Wikipedia - I2C](https://en.wikipedia.org/wiki/I%C2%B2C)  

## Tags
#electronics #embeddedSystems
