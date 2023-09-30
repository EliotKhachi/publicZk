# Amazon ECS, ECR, and Fargate

**Amazon ECR** (Elastic Container Registry) is where you store your docker images so they can be run by ECS or Fargate.  

**Amazon ECS** (Elastic Container Service) is used to launch docker containers on aws. ECS takes care of starting / stopping containers, but you must provision and maintain the infrastructure (EC2 instances) with a different service [[AWS Auto Scaling Group (ASG)](./202309152017)].  

**AWS Fargate** is used to launch docker containers on AWS, but it is a serverless offering. You do not need to manage any EC2 instances.

## References
[Amazon ECS](https://aws.amazon.com/ecs/)

## Tags
#aws
