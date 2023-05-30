# Serial Communication  

Serial communication is the process of sending data one bit at a time, sequentially, over one communication channel or computer bus. This is in contrast to parallel communication.  
**Recall: A wire can only send data by pulling that line high or low**

## How can you make sense of 1s and 0s coming from a single wire?
1. Ensure that the transmitter and the receiver agree on what serial communication protocol is being used, for example [I2C Communication](../202111020424/README.md).  
2. The 1s and 0s (bits) on the data bus occur in parallel with a [Clock Bus](../202305300022/README.md).  
3. The bits and the transitions between them are interpreted with respect to the clock bus.  
4. The data and clock buses have start and stop signatures used to group bits together to form integers or ASCII characters.  

## References
[Wikipedia - Serial Communication](https://en.wikipedia.org/wiki/Serial_communication)

## Tags
#electronics
