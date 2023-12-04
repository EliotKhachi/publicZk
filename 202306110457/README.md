# Controlling 130 DC Motors

To control 130 DC motors you can use a microcontroller, a transistor, and a power supply.  

The microcontroller would supply the PWM signal to the transistor's gate. The gate closes the circuit between the power supply and the motor. 
![image](./Sat_Jun_10_10:05:30_PM_PDT_2023.png)

Place a diode across the motor to prevent voltage spikes and a gate resistor to avoid high-frequency ringing.   

## References
[Electronics Stack Exchange - Controlling 130-size DC Motors w/ Arduino](https://electronics.stackexchange.com/questions/134284/how-do-you-control-130-size-dc-motors-with-an-arduino-seemingly-20a-dc-motors)

## Tags
#embedded
