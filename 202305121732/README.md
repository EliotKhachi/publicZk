# Relay Oscillator  

 A relay oscillator is a mechanism inside of a circuit that periodically opens and closes a portion of a circuit.  

## How an Oscillator Works
Consider a battery and a SPDT relay. This SPDT relay has pole `A` and two positions, `on` and `off`.  
1. Connect the negative terminal of the battery to the cathode of the relay.  
2. Connect the positive terminal of the battery to the `A-off` position of the relay (notice we are supplying power when the relay is off).  
3. Connect the `A` pole to the anode of the relay.  

**Explanation**
Consider the starting state as the point when the connections are made and the relay is `off`. At this point, power moves to the relay, thereby switching it to `A-on` and breaking its `A-off` connection. When the relay is on, power from the battery and the relay is severed, and it goes back to `off`, and so on...  

Right now, this oscillation is going to happen as fast as the speed of electricity can move, which will damage your relay. To incorporate a delay, we need the relay to stay powered on for a bit longer. Adding a capacitor in parallel with the relay keeps the relay powered after it breaks its connection with the battery. Once the capacitor is out of charge, the relay switches `off` and is connected with the battery again.   

## Using an Oscillator
Right now we just have an oscillator. Switch out your SDPT with a DPDT, and use the other pole, `B`, and its `on`-`off` positions to do something useful!  

## Tags
