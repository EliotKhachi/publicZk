# Gateway Load Balancer

The gateway load balancer is an [Amazon ELB](../202309150457) that combines two functions: serve as a Transparent Network Gateway (single entry/exit for all traffic) and as a [[Load Balancer](../202309150454)].  

It is used to deply, scale, and manage a fleet of 3rd part, virtual security appliances such as firewalls, intrusion detection and prevention systems, and deep packet inspection systems traffic to virtual security appliances 

Operates at Layer 3 (Network Layer) - IP Packets  
Uses the GENEVE rpotocol on port 6081.  

## References
[AWS Docs - Gateway Load Balancer](https://docs.aws.amazon.com/elasticloadbalancing/latest/gateway/introduction.html)

## Tags
#aws #dva
