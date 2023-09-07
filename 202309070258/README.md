# Job Application Q & As

**Please highlight your experience developing low latency code in C and C++**  
Although I haven't developed low latency code in C or C++, I have developed such code in MATLAB, a syntactically similar language, and I am familiar with C concepts such as pointers from my personal studies.  

Specifically, I programmed a numerical fluid dynamics simulation in MATLAB to solve a 2D lid-drive square cavity problem. I first derived finite difference formulations of the Navier Stokes equations for incompressible, rotational, viscous fluid in the x, y, and time components. Next, I initialized a grid to mesh the cavity and selected a time step. At each time step, I traversed the grid in a breadth-first-search fashion, computing the temperature of each cell. The temperature of each cell is a function of the neighboring cells.  

**If you possess any experience with real time communication protocols and audio/video processing, please identify.**
I am familiar with the serial communication protocols SPI and I2C. I wrote C code in the Arduino IDE that read sensor data through the I2C communication protocol and rendered graphics onto an LCD display to emulate an Flight Instrument display, the thing pilots use while they're flying an airplane to view critical flight information. I read data from the MPU-6050, a 3-axis accelerometer and 3-axis gyroscope sensor, to determine the velocity and orientation of the "aircraft". The velocity was printed onto the display, while the orientation was broken into pitch, yaw, and roll components and then visualized as a horizon on the display. The display also printed temperature and pressure readings from other sensors using the I2C protocol.  

## Tags
