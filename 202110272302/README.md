# From Idea to Schematic to PCB

## Step 1
Plan the function of the circuit. Define requirements. Create Block Diagram without specific components.

e.g. Create a microcontroller based circuit that reads the position of a joystick and sends the values through the RF band to a receiver. The circuit must be powered through a LiPo Battery.

**Requirements:**
* Read power delivery data and joystick data and outputs signals through RF band to a receiver.
	* MCU
	* Joystick position signal and ADC
	* Receiver and ADC	
* Deliver Power Using LiPo Battery
	* LiPo Battery
	* LiPo Charge Controller 
	* Micro USB Port to charge LiPo Battery through LiPo Charge Controller
	* Power Switch
	* 3.3V Regulator
* Deliver Power Safely - MCU reads input pin voltage reading from voltage divider and checks if 3.4V is exceeded to shut off RF functionality and notify user through LED.
	* Voltage divider
	* LED


## Step 2
Select components and create paper schematic.

## Step 3
Create proper schematic.
* Add components to the editor and rearrange them
## Step 4
Design printed circuit board (PCB).

## References
[From Idea to Schematic to PCB](https://www.youtube.com/watch?v=35YuILUlfGs&t=2s)

## Tags
#electronics
