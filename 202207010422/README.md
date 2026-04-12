# Forward X Socket Over SSH

1. Enable X forwarding on the both the server and the client systems:  
Go into `/etc/ssh/sshd_config` and change `X11Forwarding no` to `X11Forwarding yes`.  

2. Run the usual SSH command with the additional `-X` option:
`ssh -X username@server`  


## Links
[202207010424](../202207010424) - What is SSH?

## References
[Baeldung Linux - Forward X Over SSH](https://www.baeldung.com/linux/forward-x-over-ssh)

## Tags
#ssh
