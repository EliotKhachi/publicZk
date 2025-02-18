# Secure Copy SCP 

The `scp` command is used to copy files from your local machine to your remote linux servers.  

Make sure you  already have ssh key authentication between your machines: [202205131908](../202205131908) - SSH into Another Machine

## The SCP Command

The `scp` command structure is as follows:
`scp -i ~/.ssh/id_rsa.pub FILENAME USER@SERVER:/home/USER/FILENAME`

Where FILENAME is the name of the file, USER is the username on the remote machine, and SERVER is the address of the remote server.


## References
[How to Use SCP with SSH Key Authenticaton](https://www.techrepublic.com/article/how-to-use-secure-copy-with-ssh-key-authentication/)

## Tags
#ssh
