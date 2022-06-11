# Nginx Enable HTTPS

To enable HTTPS on Nginx, follow the straight-forward guide in the reference below.  

## Overview
Enabling HTTPS on Nginx involves installing openssl and using its command for generating a private key and website certificate. Run this command in */etc/nginx/certificate*: `openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out nginx-certificate.crt -keyout nginx.key`  

Also, you must edit your Nginx configuration to listen on the HTTPS port, 443, and to point to your nginx.key and nginx-certificate.crt files.  

## References
[Tech Expert Tips - Enable HTTPS on Nginx](https://techexpert.tips/nginx/enable-https-nginx/)

## Tags
#dev #nginx
