# How to Protect Your Linux Server From Hackers

1. Update your linux OS --> `sudo apt install unattended-upgrades` and configure it so you automatically download security updates --> `sudo dpkg-reconfigure --priority=low unattended-upgrades` (added text to /etc/apt/apt.conf.d/20auto-upgrades)

2. Find trusted sources to use actively maintained docker images ([linuxserver.io](linuxserver.io)), and redeploy your docker container(s) [watchtower](https://github.com/containrrr/watchtower)

3. Generate an SSH key pair to SSH into your Linux Server - [202205131908](../202205131908) - SSH into Another Machine  




[YouTube - How to protect Linux from Hackers // My server security strategy!](https://www.youtube.com/watch?v=Bx_HkLVBz9M)

## Tags
#networks #linux
