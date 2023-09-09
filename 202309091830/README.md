# AqualinkD Project

## Setup and Installation
1. Port-forward port 80 (HTTP) and 443 (HTTPS) of your router to the local IP of your Raspberry Pi.  
2. Set up your DNS settings to serve the app over your custom domain, or access youryour router's public IPV4 address to static IP, or set up a dynamic DNS updater if you opt to use your ISP's dynamic IP service. I use the latter using this repository [K0p1-Git / cloudflare-ddns-updater](https://github.com/K0p1-Git/cloudflare-ddns-updater), and update my DNS settings every minute in my Raspberry Pi's crontab:
`crontab -e`
`* * * * * sudo /bin/bash /home/eliot/cloudflare-ddns-updater/cloudflare.sh` 
3. SSH into your Raspberry Pi and set-up a reverse proxy using your favorite web server (I use nginx) to serve local port 5000 over port 80 (HTTP) and 443 (HTTPS).  
4. Download git repository.  
`sudo apt install git`  
`git clone https://github.com/EliotKhachi/pool-and-spa-controller.git`  
Add these lines to your crontab to run `app.py` and `controller.py` on reboot.  
`crontab -e`
```bash
# crontab
@reboot sudo python3 /home/eliot/pool-and-spa-controller/app.py
@reboot sudo python3 /home/eliot/pool-and-spa-controller/controller.py
```
5. Reboot and the application should be running over your router's static IP or custom domain, depending on what you prefer.  

## Introduction
For some background, the control unit for my home's pool and jacuzzi is in the kitchen. There are a few control features, namely the filter pumps, jet pumps, and lights.

The purpose of this project is to to control the pool and spa features from your phone, wherever you are. Imagine you're having a long day at work... and you want to get the jacuzzi nice and steamy by the time you get home.

## Hardware
I am replacing the control unit in my home with a [Raspberry Pi Zero 2 W](https://www.raspberrypi.com/products/raspberry-pi-zero-2-w/). There are 4 wires that run from the control unit by the pool to the one in the house:  

![image](https://s3.us-west-1.amazonaws.com/zettelimages/Sun_Jul_23_06:26:30_PM_PDT_2023.png)

|Wire|Function|
|-----|--------|
|Red|VCC (+10 Volts)|
|Black|Comm Signal 1|
|Green|GND|
|Yellow|Com Signal 2|

I haven't identified what signals are running through the black and yellow wires, but it is a 2-wire communication protocol.  

## Software
I'm writing an application accessible from the web to send commands to the Raspberry Pi.  

When the client visits the web page, they will be prompted to log in and be authenticated before accessing this screen:
![image](https://s3.us-west-1.amazonaws.com/zettelimages/Sun_Jul_23_06:28:35_PM_PDT_2023.png)

## Progress
As of now, you can have fun toggling this LED at https://smarthome.eliotkhachi.dev/
![image](https://s3.us-west-1.amazonaws.com/zettelimages/Sun_Jul_23_06:31:25_PM_PDT_2023.png)

## References
[AquaLink RS Troubleshooting Manual](https://data2.manualslib.com/pdf4/81/8060/805967-jandy/aqualink_rs.pdf?ce3b0be5667faf2e7bc2a4a458b5c686)

## Tags
#projects
