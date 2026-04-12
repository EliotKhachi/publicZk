# Nginx Enable HTTPS

To enable HTTPS on Nginx, follow the straight-forward guide in the reference below.  

## Overview
Enabling HTTPS on Nginx involves --> [202206112020](../202206112020) - Generating an Self-Signed SSL Certificate

Also, you must edit your Nginx configuration to listen on the HTTPS port, 443, and to point to your nginx.key and nginx-certificate.crt files.  

## Prequisites
You must have port 443 already opened for inbound traffic to your server. This is configured on the server side, i.e. on AWS --> [202206100433](../202206100433) - Create a Security Group

## References
[Tech Expert Tips - Enable HTTPS on Nginx](https://techexpert.tips/nginx/enable-https-nginx/)

## Tags
#nginx
