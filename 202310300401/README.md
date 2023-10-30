# How to Encrypt Using GPG

## Pre-requisites
1. Install GPG or GnuPG, a free PGP-based signature and encryption software.  
`sudo apt-get install gpg`  
2. Get a public key  
You can encrypt files with either your public key or somebody else's (i.e. the recipient of your message).  
You can generate your own key with `gpg --full-generate-key`.  
Otherwise, download the recipient's key, and import it: `gpg --import recipient.key`.  
At this point, `gpg` should recognize the key (whether it was generated or imported) by the email address associated with it. Run `gpg --list-keys` to see for yourself.   
3. Encrypt  
`gpg --recipient name@example.com --encrypt secret` will encrypt the file `secret` in your current directory and output it as `secret.gpg`. Replace `name@example.com` with the email address of the key you're encrypting with, and `secret` with the file you would like to encrypt.  

## References
[Go Linux Cloud - https://www.golinuxcloud.com/tutorial-encrypt-decrypt-sign-file-gpg-key-linux/](https://www.golinuxcloud.com/tutorial-encrypt-decrypt-sign-file-gpg-key-linux/)

## Tags
#cryptography
