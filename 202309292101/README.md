# Amazon EFS

[Amazon EFS](https://github.com/EliotKhachi//publicZk/tree/main/202309120302)

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

## Tags
#aws
