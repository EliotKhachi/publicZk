# Floating pins 

Floating pins on a processor or a microcontroller board like Arduino are BAD and should be avoided. But what are they?

Floating pins are the pins on a processor or MCU that are neither a 1 or a 0. They are constantly alternating back and forth randomly due to noise because of some internal magic going on in the processor. This makes that pin unable to be used to read or write to because the signal will get lost in the noise.

A resistor is used to connect floating pins to either high (5.0/3.3V) or low (GND) so that the pin has a constant reading when not being used. When the pin is used, the signal writing to or reading from the pin will not pass through the resistor because the current will take the path of least resistance.

## References
[Floating Pins, Pull-Up Resistors and Arduino](https://www.programmingelectronics.com/floating-pins-pull-up-resistors-and-arduino/)

## Tags
#electronics #embeddedSystems
