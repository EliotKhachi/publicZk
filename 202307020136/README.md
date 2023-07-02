# Install and Configure Apache Web Server on Amazon Linux 2 EC2 Instance

## Steps
1. *SSH into your EC2 instance*
2. `sudo yum update -y` # update your package list
3. `sudo yum install -y httpd mariadb-server` # install Apache and MariaDB
4. `sudo systemctl start httpd` # start the Apache web server
5. `sudo systemctl enable httpd` # configure to start Apache web server at each system boot
6. `sudo systemctl is-enabled httpd` # verify httpd is on

## Tags
#ec2
