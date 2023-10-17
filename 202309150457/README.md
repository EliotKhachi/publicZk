# Amazon Elastic Load Balancer (ELB)

An Amazon Elastic Load Balancer (ELB) is an aws service that is a managed load balancer [[Load Balancing](../202309150454)]. It's guaranteed to work, takes care of upgrades, maintenance, and has high availability. Only provides a few configuration details.  

## 4 Kinds of Load Balancers
1. Application Load Balancer (HTTP / HTTPS) - Layer 7  
2. Network Load Balancers (ultra-high performance, allows for TCP) - Layer 4  
3. Gateway Load Balancer - Layer 3  
4. Classic Load Balancer (deprecated)

## Comparison
|Application|Network|Gateway|
|-----------|-------|-------|
|HTTP/HTTPS/gRPC protocols (layer 7)| TCP / UDP protocols (layer 4) |GENEVE Protocol on IP Packets (layer 3);  
|HTTP routing features|High performance|Route traffic to firewalls you manage on EC2 instances|
Static DNS|Static IP through Elastic IP|intrusion detection|

## References
[Amazon ELB](https://aws.amazon.com/elasticloadbalancing/)

## Tags
#aws
