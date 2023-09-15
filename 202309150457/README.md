# Amazon ELB

An Amazon Elastic Load Balancer (ELB) is an aws service that is a managed load balancer. It's guaranteed to work, takes care of upgrades, maintenance, and has high availability. Only provides a few configuration details.  

## 4 Kinds of Load Balancers
1. Application Load Balancer (HTTP / HTTPS) - Layer 7  
![image](https://s3.us-west-1.amazonaws.com/zettelimages/Thu_Sep_14_10:02:01_PM_PDT_2023.png)
2. Network Load Balancers (ultra-high performance, allows for TCP) - Layer 4  
![image](https://s3.us-west-1.amazonaws.com/zettelimages/Thu_Sep_14_10:02:11_PM_PDT_2023.png)
3. Gateway Load Balancer - Layer 3  
![image](https://s3.us-west-1.amazonaws.com/zettelimages/Thu_Sep_14_10:02:21_PM_PDT_2023.png)

## Comparison
|Application|Network|Gateway|
|-----------|-------|-------|
|HTTP/HTTPS/gRPC protocols (layer 7)| TCP / UDP protocols (layer 4) |GENEVE Protocol on IP Packets (layer 3);  
|HTTP routing features|High performance|Route traffic to firewalls you manage on EC2 instances|
Static DNS|Static IP through Elastic IP|intrusion detection|

## Tags
#aws
