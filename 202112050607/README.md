# I2C Clock Line: SCL

SCL one of the two open-drain, bidirectional lines of the I2C bus. It is responsible for establishing the speed of the communication, i.e. the frequency at which bits are "sent" through the SDA line.

The SCL line is simply pulled HIGH and then LOW in a continuous fashion to set a clock speed. Each time the line is pulled HIGH and then LOW is called one cycle.

There are 5 modes of clock speed:

1. **Standard-Mode** (Sm): 100 kbit/s
2. **Fast-Mode** (Fm): 400 kbit/s
3. **Fast-Mode Plus** (Fm+): 1 Mbit/s
4. **High-speed Mode** (Hs-mode): 3.4 Mbit/s
5. **Ultra-Fast Mode** (UFm): 5 Mbit/s

Not all devices can be operated at all speeds, but devices are downward-compatible. However, the latter is not true for ultra fast-mode devices because an ultra-fast bus is unidirectional while the other modes are bidirectional.

## Tags
