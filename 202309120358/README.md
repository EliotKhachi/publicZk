# Availability Zone

Each [AWS Region](https://github.com/EliotKhachi//publicZk/tree/main/202309120400) has multiple, isolated locations known as *Availability Zones (AZ)*.  

You can migrate instances from one AZ to another. Also, if you distribute your instances across multiple AZs and one instance fails, you can design your application so that an instance in another AZ can handle requests.  

Each AZ has a code which is its Region code followed by a letter identify, i.e. `us-east-1a` is an AZ in the `us-east-1` region.  

## References
[AWS Docs - Regions and Zones](https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/using-regions-availability-zones.html)  

## Tags
#aws
