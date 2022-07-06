# Port Forwarding

1. Go to your router's configuration settings online (For ASUS, go to router.asus.com)  

2. Navigate to the port forwarding page (this may be different depending on the router model, try checking under WAN.  

3. Add a new port forwarding configuration
	* Make a name for this service  
	* Specify the External Port as 80 or a range from 80 to 80  
	* Select the Internal IP address as the IP address of your raspberry pi (note that your Pi has two IP's if connected to the router via ethernet, so select it accordingly)  
	* Select the Protocol to be TCP *and* UDP, (BOTH)  

4. You're done! Save the settings.  

## Tags
#dev #networks
