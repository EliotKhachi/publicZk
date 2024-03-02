# Amazon EFS Deep Dive

## Background
[Amazon EFS](https://github.com/EliotKhachi//publicZk/tree/main/202309120302)

## Deep Dive
**Use Cases**  
Content management, web serving, data sharing, Wordpress.  
**Features**
* Uses a security group to control access.  
* Encryption at rest using KMS.  
* Compatible with Linux based AMI (not Windows)
* POSIX file system (~Linux), standard file API.  
* Pay per use
* Can move to EFS-IA through storage tier lifecycle management
* Multi-AZ is standard but can configure One Zone for dev environments

**Scale**
* Up to 1000s of concurrent NFS clients (EC2 instances)  
* 10 GB+ /s throughput.  
* Can grow to petabyte-scale storage automatically.  
**Performance mode**
* General purpose (default) - low-latency
* Max I/O - high throughput, low-latency, and parallel compute  
**Throughput Mode**
    * Bursting (throughput is correlated with size)  
    * Provisioned (throughput is not correlated with size)  
    * Elastic (automatically scales throughput based on workloads)

**Storage Classes**
* Standard for frequent access  
* Infrequent Access (w/ lifecycle policy)  
* One Zone Infrequent Access (>90% in cost savings)  
**Availability and Durability**
* Standard: Regional/Multi-AZ (good for prod)  
* One Zone: One AZ; (great for dev, backup enabled by default)  

## Tags
#aws
