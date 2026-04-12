# Generating an Self-Signed SSL Certificate

To generate a self-signed SSL certificate, install openssl and use its command for generating a private key and website certificate. Run the following command in */etc/nginx/certificate*: `openssl req -new -newkey rsa:4096 -x509 -sha256 -days 365 -nodes -out nginx-certificate.crt -keyout nginx.key`.  

Note that you can name your .key and .crt files anything you'd like.  

## References
[Tech Expert Tips - Enable HTTPS on Nginx](https://techexpert.tips/nginx/enable-https-nginx/)

## Tags
#security #ssl
