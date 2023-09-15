# Scaling Strategies

* Manual Scaling - Update the size of an ASG manually  
* Dynamic Scaling - Respond to changing demand  
    * Simple / Step Scaling
        * When a CloudWatch alarm is triggered (i.e. CPU > 70%), then add 2 units.  
        * When a CloudWatch alarm is triggered (i.e. CPU < 30%), then remove 1.  
## Tags
#cloud
