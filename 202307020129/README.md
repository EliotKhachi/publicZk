# Generate and Configure SSL Certificate for Apache on Amazon Linux 2 EC2 Instance

## Pre-Requisites
* An Amazon Linux 2 EC2 Instance
* Configured security groups on that instance for SSH, HTTP, and HTTPS requests.  
* Installed and configured Apache web server

## Steps
1. *SSH into your EC2 instance*  
2. `sudo yum update -y` # update your package list
3. `sudo yum install -y httpd mariadb-server` # install Apache and MariaDB 
4. `sudo systemctl start httpd` # start the Apache web server  
5. `sudo systemctl enable httpd` # configure to start Apache web server at each system boot  
6. `sudo systemctl is-enabled httpd` # verify httpd is on  

## References
[AWS Docs - Configure SSL/TLS on Amazon Linux 2](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/SSL-on-amazon-linux-2.html)

## Tags
#dev #aws
