# What is Caching?

In computing, a cache is a high-speed data storage layer which stores a subset of data, typically transient in nature, so that future requests for that data are served up faster than is possible by accessing the data’s primary storage location. Caching allows you to efficiently reuse previously retrieved or computed data.  

## Example: The CPU and Computer Architecture
At the core of any computer is the CPU (Core Processing Unit), which executes machine instructions. At the end of the day, machine instructions read and write data. That's what computers do. The pipelines of data going into and out of the CPU, must be extremely streamlined. The CPU can't read/write to the hard drive directly; that would be way too slow. Instead, there are several layers in between. Here they are listed from fastest to slowest:  
1. L1 CPU Cache Memory  
2. L2 CPU Cache Memory  
3. L3 CPU Cache Memory  
4. LN CPU Cache Memory  
5. RAM  
6. Hard Disk / SSD / M.2 SSD  

## References
[AWS Docs - Caching Overview](https://aws.amazon.com/caching/)

## Tags
#db
