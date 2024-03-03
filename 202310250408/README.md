# Server Name Indication (SNI)

SNI solves the problem of loading multiple SSL certificates onto one web server (to serve different websites).  

It's a "newer" protocol, and requires the client to indicate the hostname of the target server in the initial SSL handshake.  

The server will then find the correct certificate or return the default one.  

## Tags
#aws #security #networks #dva
