# Port Forwarding to the Internet

All the internet's servers communicate through what is known as Port 80. In order to enable your router to host a server on the internet, it must have enabled Port 80 as one of its forwarded ports.  

1. Go to your router's configuration settings online (For ASUS, go to router.asus.com)  

2. Navigate to the port forwarding page (this may be different depending on the router model, try checking under WAN.  

3. Add a new port forwarding configuration
	* Make a name for this service  
	* Specify the External Port as 80 or a range from 80 to 80  
	* Select the Internal IP address as the LAN IP address of the machine that you are hosting your server on (192.168.1...)  
	* Select the Protocol to be TCP *and* UDP, (BOTH)  

4. You're done! Save the settings. You can now host your server to the internet from your specified machine.   

## Tags
#dev #networks
