# Amazon EBS

Amazon Elastic Block Store (Amazon EBS) provides block level storage volumes for use with EC2 instances. EBS volumes are network drives that attach (mount) to one EC2 instance at a time. EBS volumes must be in the same [Availability Zone](../202309120416) as your instance.  

EBS volumes are characterized by size, throughput, and IOPS (I/O Operations per second)  
## Types
* gp2 / gp3 (SSD): general purpose SSD volume that balances price and performance.  
* io1 / io2 Block Express (SSD): Highest-performance SSD colume for low-latency and high throughput  
* st1 (HDD): low cost HDD volume designed for high-frequency and throughput.  
* sc1 (HDD): lowest cost HDD volume designed for less frequently accessed workloads.  

If you want very fast data read and write, see [Amazon EC2 Instance Store](../202309120447).  

## References
[AWS Docs - Amazon EBS](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/AmazonEBS.html)  

## Tags
#aws
