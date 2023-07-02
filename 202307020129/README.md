# Generate and Configure SSL Certificate for Apache on Amazon Linux 2 EC2 Instance Using CertBot

## Pre-Requisite
[Install and Configure Apache Web Server on Amazon Linux 2 EC2 Instance](../202307020136/README.md)

## Steps to Configure SSL Certificate
1. Update package list  
`sudo yum update`  
2. Install Certbot  
`sudo yum install certbot python2-certbot-apache`  
3. Create a virtual host listening on port 80  
`sudo vim /etc/httpd/conf.d/your_domain.conf`  
```
<VirtualHost *:80>
    ServerName your_domain 
    DocumentRoot /var/www/html
</VirtualHost>
```
4. Test the Apache configuration for syntax errors  
`sudo apachectl configtest`  
5. Run Certbot
`sudo certbot --apache`

## References
[AWS Docs - Configure SSL/TLS on Amazon Linux 2](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/SSL-on-amazon-linux-2.html)

## Tags
#aws
