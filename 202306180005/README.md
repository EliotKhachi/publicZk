# Using Timers for PWM Generation

One use case for timers is to generate a PWM signal. The configuration implementation for a timer channel varies for each microcontroller and whether you are using *CubeMX*, the *HAL* library, or bare-metal programming.  

In general, there are 3 core parameters when configuring a timer for PWM:  
1. Clock Source (i.e. internal clock)  
2. Counter Period or Bit Resolution (usually 8 or 16 bit value)  
3. Pulse (usually 8 or 16 bit value)  

## Tags
#embeddedSystems
