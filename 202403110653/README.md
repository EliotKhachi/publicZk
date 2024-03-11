# Things Learned from DVA-C02 AWS Quizzes

## Section 7 - ELB + ASG  
* When using an ALB to distribute traffic to EC2 instances, your EC2 instances will see requests as coming from your ALB's private IP address. To get the actual client's IP address, look for the `X-Forwarded-For` header in the ALB's HTTP request.  
* You can configure a Network Load Balancers to use a Static IP and static DNS name. In contrast, application load balancers can be configured to havea *elastic IP* for a static DNS name.   
* Server Name Indication (SNI) allows you to expose multiple HTTPS applications each with its own SSL certificate on the same listener (server).  
* ALB's can't route traffic to target groups based on client locations / geography.  

## Section 8 - RDS + Aurora + ElastiCache
* Typically AWS charges you for moving data from one AZ to another, but for RDS read replicas within the same region, you don't pay the fee.  

## Tags
#aws #dva
