# Clock Bus

The clock bus is a wire that is simply pulled high and low in a continuous fashion to set a clock speed, typically done by the master device. Each time the master pulls the line high and then low is one cycle.  

# 5 modes of clock speed:
1. **Standard-Mode** (Sm): 100 kbit/s
2. **Fast-Mode** (Fm): 400 kbit/s
3. **Fast-Mode Plus** (Fm+): 1 Mbit/s
4. **High-speed Mode** (Hs-mode): 3.4 Mbit/s
5. **Ultra-Fast Mode** (UFm): 5 Mbit/s

Not all devices can be operated at all speeds, but devices are downward-compatible. However, the latter is not true for ultra fast-mode devices because an ultra-fast bus is uni-directional while the other modes are bi-directional.

## Links
[I2C Clock Line: SCL ](../202112050607/README.md)

# Tags
#electronics
