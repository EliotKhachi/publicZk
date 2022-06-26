# Remove Need for SSH Passphrase Authentication

When you try to establish an SSH connection to another entity, i.e. your github or your remote machine, the protocol will prompt you to enter the passphrase for the private id\_rsa file of the remote machine.  

To remove the need for passphrase authentication, do the following:

**Step 1:**
*Github*
Copy the contents of your local machine's public SSH key and paste it into a new SSH key in the *SSH and GPG keys* section of your *Profile* > *Settings*. 

*Remote Machine*
Copy the contents of your local machine's public SSH key and paste it into the *authorized_keys* file of your remote machine. *(Both of these files can be found in the ~/.ssh/ directory)*.  
---
2. If after doing **Step 1**, the SSH connection still prompts you to enter the passphrase, then on your local machine, run `ssh-add ~/.ssh/<private-key-file-name>`. I.e. for a private rsa key run `ssh-add ~/.ssh/id_rsa`. This will add and save your key on your OS.  

## References
[Stack Overflow - Git keeps asking me for my ssh key passphrase](https://stackoverflow.com/questions/10032461/git-keeps-asking-me-for-my-ssh-key-passphrase)

## Tags
#ssh
