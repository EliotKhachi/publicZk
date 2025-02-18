# I2C Clock Line: SCL 

SCL is one of the two open-drain, bidirectional lines of the I2C bus. It is responsible for establishing the speed of the communication, i.e. the frequency at which bits are "sent" through the SDA line. [Clock Bus](../202305300022/README.md)

Not all devices can be operated at all speeds, but devices are downward-compatible. However, the latter is not true for ultra fast-mode devices because an ultra-fast bus is unidirectional while the other modes are bidirectional.

## Tags
