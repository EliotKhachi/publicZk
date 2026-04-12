# I2C Bus Arbitration

*Bus arbitration* is a feature of I2C communcation that safeguards the I2C bus lines from having collisions in the case of multiple masters initiating a transaction at the same time.  

The master that writes a 0 first while the other is writing a 1 will win the arbitration and continue its message while the other master will stop and wait. This is because the master that puts a 1 is actually releasing the SDA line. See [I2C Open-Drain ](../202112050545) for more information.

# References
[I2C Open-Drain ](../202112050545)
[Introduction to I2C](https://deepbluembedded.com/i2c-communication-protocol-tutorial-pic/)

## Tags
