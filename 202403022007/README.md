# EC2 User Data

You can pass user data to every EC2 instance you launch to automate tasks on boot time such as updating the OS or software applications, hosting a web server, etc.. The configuration is just a shell script.  

*Note: This will slow your boot times since the script actually needs time to execute*  
## Example: Create and Configure a Web Server On an Amazon Linux EC2
```bash
#!/bin/bash
yum update -y
amazon-linux-extras install -y lamp-mariadb10.2-php7.2 php7.2
yum install -y httpd mariadb-server
systemctl start httpd
systemctl enable httpd
usermod -a -G apache ec2-user
chown -R ec2-user:apache /var/www
chmod 2775 /var/www
find /var/www -type d -exec chmod 2775 {} \;
find /var/www -type f -exec chmod 0664 {} \;
echo "<?php phpinfo(); ?>" > /var/www/html/phpinfo.php
```

## References
[AWS Docs - EC2 User Data](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/user-data.html)

## Tags
#aws
