# SSH into Another Machine

To SSH to a remote machine from your local machine, you must first generate an ssh key pair  

**On local machine**  
`ssh-keygen -t rsa -b 4096`  

## Disable Passphrase Authentication

2. Copy over your public rsa key over to your remote machine's *authorized\_keys* file  
**On local machine**
```
	user@local$ cd ~/.ssh 
	user@local$ vim id_rsa.pub
	# Copy contents
```
**On remote machine**
```
	user@remote$ cd ~/.ssh
	user@remote$ vim authorized_keys
	# Paste contents of id_rsa.pub from local machine into this file
```
3. Go into your sshd\_config file 
**On remote machine**
```
	user@remote$ cd /etc/ssh
	user@remote$ cat sshd_config >> sshd_config.bak ## Create a backup of your sshd_config file first
	user@remote$ sudo vim sshd_config
	# Uncomment and change the following:
	# PermitRootLogin prohibit-password to PermitRootLogin yes 
	# PasswordAuthentication no to PasswordAuthentication yes
```

4. If you still can't `ssh remote-user@remote-ip` without passphrase authentication, try the following:
```bash 
	sudo service ssh restart
	# OR
	sudo systemctl restart ssh
	# AND
	ssh-add ~/.ssh/<private-key-file-name> # This will add and save your key on your OS.
``` 

You can set this up upon booting up the machine. Further configuration is needed to ssh while the remote machine is suspended or to prevent ssh from exiting when the remote machine enters sleep mode.  

## References
[Linux Terminal Tutorial SSH Key-Based Authentication](https://www.youtube.com/watch?v=vpk_1gldOAE)

## Tags
#ssh
