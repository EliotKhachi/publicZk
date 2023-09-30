# Availability Zone

Multiple, isolation locations known as *Availablity Zones* exist in each [AWS Region](./202309120400). Each Availability Zone contains multiple data centers, each with redundant power, networking, and connectivity, and housed in separate facilities.  

If you distribute your instances across multiple Availability Zones and one instance fails, you can design your application so that an instance in another Availability Zone can handle requests. 

The code for Availability Zone is its Region code followed by a letter identifier. For example, us-east-1a.  

## References
[AWS Docs - AWS Regions and Availability Zones](https://docs.aws.amazon.com/whitepapers/latest/get-started-documentdb/aws-regions-and-availability-zones.html)  

## Tags
#aws
