# Amazon EBS

Amazon Elastic Block Store (Amazon EBS) provides block level storage volumes for use with EC2 instances. EBS volumes are network drives that attach (mount) to one EC2 instance at a time. EBS volumes must be in the same [Availability Zone](https://github.com/EliotKhachi//publicZk/tree/main/202309120416) as your instance.  

We recommend Amazon EBS for data that must be quickly accessible and requires long-term persistence.  

if you want very fast data read and write, see [Amazon EC2 Instance Store](https://github.com/EliotKhachi//publicZk/tree/main/202309120447).  

## Important 
* Root EBS volumes are deleted upon instance termination by default.  
*  EBS volumes are characterized by Size (Gb), Throughput (Bits/s), and IOPS (R/W operations per second). There are gp2, gp3, io1, io2, st1, and sc1. g\* are general purpose, io\* are high-performance, and s\* are HDD.   
* Locked at the AZ level.   
* To migrate, copy, or archive EBS volumes, see [EBS Snapshots](https://github.com/EliotKhachi//publicZk/tree/main/202309150357).  

* Multiple EBS volumes can be attached to a single ec2 instance. You cannot attach the same EBS to multiple EC2 instances... normally.   
* io1/io2 EBS volumes have the special multi-attach feature where you can attach them to up to 16 instances per EBS volume. For this you must use a file system that is cluster-aware (not XFS or EX4).  
## Multi-Attach

## References
[AWS Docs - Amazon EBS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html)  

## Tags
#aws
