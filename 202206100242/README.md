# Connecting to a Remote Server 

If your local computer OS is Linux or macOS X, you can use the following ways to connect to your Linux instance:  
* SSH client  
* EC2 Instance Connect  
* AWS Systems Manager Session Manager  

## Connect Using SSH
**Prerequisites**
* Go to your Instances page on the Amazon EC2 console 
* Verify your instance is *Running* --> [202206101806](../202206101806) - Launching an Amazon EC2 Instance  
* If you've launched your instance, you should already have...
	* enabled inbound traffic from your IP address through the security group and key pair  
	* set the permissions of your private key file  
* Optional: get the instance fingerprint using the AWS CLI (Amazon Web Services Command Line Interface) to verify it matches the fingerprint that gets printed on the terminal when trying to connect for the first time.  
---
**Connect**
1. Open your terminal and do `ssh -i /path/my-key-pair.pem my-instance-user-name@my-instance-public-dns-name`   

## References
[Connect to your Linux instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AccessingInstances.html)
[Connect to your Linux instance using SSH](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AccessingInstancesLinux.html)
[General prerequisites for connecting to your instance](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/connection-prereqs.html)

## Tags
#aws #ssh
