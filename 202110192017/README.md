# Floating pins  

Floating pins are usually referring to the pins on an IC [Integrated Circuits](../202305121825), processor, or microcontroller. They are BAD and should be avoided.   

Floating pins are neither HIGH or LOW [HIGH and LOW Voltages](../202305121857). They can alternate back and forth due to noise, or the IC  may automatically assign it a value. This makes the pin unpredictable.   

## Solution
A resistor can connect floating pins to either HIGH or LOW so that the pin has a constant reading when not being used. You may need to incorporate a switch to control how to assign floating pins.  

## References
[Floating Pins, Pull-Up Resistors and Arduino](https://www.programmingelectronics.com/floating-pins-pull-up-resistors-and-arduino/)

## Tags
#electronics #embeddedSystems
