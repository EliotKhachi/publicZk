# Amazon EBS

Amazon Elastic Block Store (Amazon EBS) provides block level storage volumes for use with EC2 instances. EBS volumes are network drives that attach (mount) to one EC2 instance at a time. EBS volumes must be in the same [Availability Zone](https://github.com/EliotKhachi//publicZk/tree/main/202309120416) as your instance.  

We recommend Amazon EBS for data that must be quickly accessible and requires long-term persistence.  

To copy, , and archive EBS volumes, see [EBS Snapshots](https://github.com/EliotKhachi//publicZk/tree/main/202309150357).  

If you want very fast data read and write, see [Amazon EC2 Instance Store](https://github.com/EliotKhachi//publicZk/tree/main/202309120447).  

## Types
EBS volumes are characterized by Size (Gb), Throughput (Bits/s), and IOPS (R/W operations per second). There are gp2, gp3, io1, io2, st1, and sc1. g\* are general purpose, io\* are high-performance, and s\* are HDD.   

## References
[AWS Docs - Amazon EBS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html)  

## Tags
#aws
