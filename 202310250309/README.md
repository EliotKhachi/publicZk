# Network Load Balancer (NLB)

Network load balancers (Layer 4) allow you to forward TCP & UDP traffic to your instances.

## Bandwidth and Latency
It can handle millions of request per second at ~100 ms latency (less latency than Application Load Balancers (ALBs))

## Target Groups
* Target Groups can contain EC2 instances or private IP addresses.  
* NLBs can also target ALBs

## References
[AWS Docs - Network Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/network/introduction.html)

## Tags
#aws
