# Types of EBS Volumes

EBS volumes are characterized by size, throughput (rate of data transfer in terms of bytes per second), and IOPS (I/O Operations per second).   

There are roughly 3 classes of EBS volumes.   

## 1. General Purpose
**Description**
* gp2 / gp3 are general purpose SSD volumes that balances price and performance.  
* gp3 can set IOPS up to 16,000 independent of storage  
* gp2's IOPS is linked to storage (3 IOPS per GB), and maxes out at 16,000.  
**Use Cases**
System boot volumes; virtual desktops; development and test environemnts.  
## 2. High-Performance
**Description**
* io1 / io2 Block Express are high-performance SSD volume for low-latency and high throughput workloads.  
* Their IOPS can be provisioned (PIOPS) to be greater than 16,000.  
* io1 max storage = 16 TiB, max PIOPS = 64,000.  
* io2 max storage = 64 TiB, max PIOPS = 256,000.  
* Supports EBS Multi-Attach  
**Use Cases**
Critical business applications that need, >16,000, sustained IOPS; database workloads.  
## 3. Low Cost
**Description** 
* st1 (HDD): low cost HDD volume designed for high-frequency and throughput.
* sc1 (HDD): lowest cost HDD volume designed for less frequently accessed workloads (archives).  
**Use Cases**

## References
[AWS Docs - EBS Volume Types](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/ebs-volume-types.html)  

## Tags
#aws
