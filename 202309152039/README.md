# Scaling Strategies

* Manual Scaling - Update the size of an ASG manually  
* Dynamic Scaling - Respond to changing demand  
    * Simple / Step Scaling
        * When a CloudWatch alarm is triggered (i.e. CPU > 70%), then add 2 units.  
        * When a CloudWatch alarm is triggered (i.e. CPU < 30%), then remove 1.  
    * Target Tracking Scaling
        * Example: I want the average ASG CPU to stay at around 40%.  
    * Scheduled Scaling
        * Anticipate a scaling based on known usage patterns  
    * Predictive Scaling
        * Uses Machine Learning to predict future traffic ahead of time  

## Tags
#cloud
