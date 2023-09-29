# Amazon EFS

Amazon Elastic File System (EFS) is a serverless, fully elastic file storage that can be mounted on 100s of EC2s. It automatically grows and shrinks as you add and remove files with no need for management, provisioning, deploying, patching, or maintenance.  

* Scales automatically; pay for storage you use  
* Designed for 11 9s of durability and 4 9s of availibility  
* Works with Linux EC2 instances  
* Multi-AZ capable  

## Important
* Performance mode
    * General purpose (default)
    * Max I/O
* Throughput Mode
    * Bursting (throughput is correlated with size)
    * Provisioned (throughput is not correlated with size)
    * Elastic (automatically scales throughput based on workloads)  
* Compatible with Linux based AMI (not Windows)  
* POSIX file system (~Linux)  
* Uses a security group  
* Can move to EFS-IA through storage tier lifecycle management  
* Multi-AZ is standard but can configure One Zone for dev environments   

# References
[AWS Docs - Amazon EFS](https://aws.amazon.com/efs/?nc2=type_a)  

## Tags
#aws
