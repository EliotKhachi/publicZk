# Syncing to Another Machine

1. To sync to a remote machine from your local machine, you must first generate an ssh key pair  

**On local machine**  
`ssh-keygen -t rsa -b 4096`  

2. Next you need to copy over your public rsa key over to your remote machine's authorized\_keys file

Navigate to ~/.ssh and `ls` to see `id_rsa` and `id_rsa.pub`

**On remote machine**
```
	cd ~/.ssh
	vim authorized_keys
	# Copy contents of id_rsa.pub
```
3. While still on your remote machine, go into your sshd\_config file  
```
	cd /etc/ssh
	cat sshd_config >> sshd_config.bak ## Create a backup of your sshd_config file first
	sudo vim sshd_config
	# Uncomment and change the follow:
	# PermitRootLogin prohibit-password to PermitRootLogin yes 
	# PasswordAuthentication no to PasswordAuthentication yes
```

## Tags
#linux
