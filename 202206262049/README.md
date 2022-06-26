# Remove Need for SSH Passphrase Authentication

When you try to establish an SSH connection to another entity, i.e. your github or your remote machine, the protocol will prompt you to enter the passphrase for the private id\_rsa file of the remote machine.  

2. Run `ssh-add ~/.ssh/<private-key-file-name>`. I.e. for a private rsa key run `ssh-add ~/.ssh/id_rsa`. This will add and save your key on your OS.  

## References
[Stack Overflow - Git keeps asking me for my ssh key passphrase](https://stackoverflow.com/questions/10032461/git-keeps-asking-me-for-my-ssh-key-passphrase)

## Tags
#ssh
