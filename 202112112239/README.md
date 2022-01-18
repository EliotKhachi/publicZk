# Logic Analyzer Fundamentals 

A logic analyzer is a tool used to debug a digital circuit by reading the logic levels of a signal(s) at a specified sample rate for a specified sample duration.

* It has many channels, typically 16 to over 100, and it is used to read the *logic threshold levels* of a signal as opposed to the *analog details* of a signal (see oscilloscope).

* When the voltage of a channel on the logic analyzer exceeds a certain value, it reads a '1', otherwise it reads a '0'. 
* The sample rate can range from 10 kHz to 2 GHz. 

* The sample duration can range from micro-seconds to hours depending on the specified sample rate and the device's hardware memory capacity.

* Generally speaking, the sample rate should be 4-10x times the highest frequency of the signal being measured.

## Trigger Modes

**Simple Trigger** - Supports edge or level trigger of the channel(s) and trigger position setting in the whole capture depth.
**Advanced Trigger** - Used to setup complex trigger flags, i.e. multi-events trigger, protocol trigger.
	* *Stage Trigger*
	* Serial Trigger*

## References

[Logic Analyzer Fundamentals](https://www.tek.com/en/document/primer/logic-analyzer-fundamentals)

[DSView User Guide v1.00 by DreamSourceLab](https://www.dreamsourcelab.com/doc/DSView_User_Guide.pdf) --> Caution: This is a download.

## Tags
#embeddedSystems
