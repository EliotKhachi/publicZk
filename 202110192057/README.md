# Features, Modes, and Controls When Outputting to a Pin

There are 2 main modes when outputting to a pin:
**Open Drain** - MCU pin acts as an input signal to a transistor. Generally used when there are multiple signals on a single line to communicate with each other. Important to use a pull up or pull down resistor to cancel noise from the pin.

**Push-Pull** - Not necessary to use a *pull-up* or *pull-down* state. The *None* state is used for output pins and this mode.

There are 3 states for each mode:
1. *Pull-up*
2. *Pull down*
3. *None*

States are configured internally (through code) by **registers**.

## References
[How to Output to a Pin to Blink an LED](https://www.youtube.com/watch?v=o0A0zTdf3zY&list=PL6PplMTH29SHgRPDufZhfMRoFwRAIrzOp&index=6)

## Links
[4 Types of Registers and Their Configurations](../202110192118)

## Tags
#embeddedSystems #incomplete

