# Load Balancing

A load balancer is a server.  

Load balancing is the act of forwarding internet traffic to multiple servers downstream the network.  

## How?
A load balancer has a routing table that essentially map URLs to target groups. The routing can be based on the *path*, *subdomain*, and even *Query Strings* of the URL:   
**Path** - example.com/*users*  
**Subdomain** - *one*.example.com  
**Query Strings** - example.com/users?*id=123&order=false*  

## Reasons to use a load balancer
1. Spread load across multiple downstream servers (in case of many simultaneous requests)  
2. Expose a single point of access (DNS) to your application (the load balancer)  
3. Seamlessly handle failures of downstream instances  
4. Do regular health checks to your instances  

## Tags
#cloud
