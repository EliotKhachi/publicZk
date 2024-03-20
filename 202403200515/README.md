# ARINC (Aeronautical Radio, Incorporated) 429 Protocol

[ARINC](https://en.wikipedia.org/wiki/ARINC) 429 is a communication standard for all ground-based aeronautical radio stations to ensure compliance with the Federal Radio Commission rules and regulations.  

## Features
* Self-clocking, self-synchronizing data bus protocol (Tx and Rx are on separate ports).  
* Physical connection wires are twisted pairs carrying balanced differential signaling (a technique to improve signal quality and reliability). One wire carries a positive signal, while the other carries the negative signal, and the voltage difference between them is the *actual* signal read and interpreted by the processor.  
* [Data words](https://en.wikipedia.org/wiki/Word_(computer_architecture)) are 32 bits in length.  
* Most [messages](https://en.wikipedia.org/wiki/Protocol_data_unit) consist of a single data word, and are transmitted at 100 kbits/s.  

## References
[Wikipedia - ARINC 429](https://en.wikipedia.org/wiki/ARINC_429)  

## Tags
#electronics #embedded
