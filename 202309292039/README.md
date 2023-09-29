# Amazon EBS vs EFS vs Instance Store

Amazon EBS volumes are "network" USB sticks. Multiple EBS volumes can be attached and mounted to a single instance as long as they are in the same [Availability Zone](https://github.com/EliotKhachi//publicZk/tree/main/202309120416).   

Amazon EFS is a network file system. 100s of EC2 instances can mount the same EFS to sync files between them.  

Amazon Instance Store is an allocation of physical storage resources right onto your instance. It's used for very fast R/W and IOPS purposes such as caching.  

EFS is more expensive than EBS.  

## Tags
#aws
