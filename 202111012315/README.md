# ADC on STM32F030 

ADC signals flow through *channels* on the microcontroller. These channels correspond to pins on the microcontroller and each analog device corresponds to its own *channel*.

## Setup and Conversion
**Step 1:** Calibration - Calibrates the voltage reference onboard the chip and the ADC channel to maintain a consistent, repeatable voltage reading.

**Step 2:** Connect the ADC with a Clock - Using the clock source for the STM32f0: HSI14

**Step 3:** Establish the conversion; setup channels, specify scan direction, establish the start of the conversio, grab the conversion in 8, 10, or 12 bits.

## References
[How to use the ADC (analog to Digital Conversion) for ARM Microcontrollers Tutorial and Intro](https://www.youtube.com/watch?v=Nbg0woJMc-Y&list=PL6PplMTH29SHgRPDufZhfMRoFwRAIrzOp&index=33)

## Tags
#embeddedSystems #STM32
