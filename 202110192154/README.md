# Advanced High Performance Bus 

This bus is used to access certain peripherals on the microprocessor, such as the GPIO pins. The bus must first be enabled through the **AHBENR** (Advanced High-Performance Enable Register) located under the **RCC** [How to Output to a Pin - Types of Registers](../202110192118). The clock is also enabled through the **AHBENR** register for the port that we need, i.e. enable GPIOC for port c.
## Links
[How to Output to a Pin - Types of Registers](../202110192118)
## Tags
#embeddedSystems
