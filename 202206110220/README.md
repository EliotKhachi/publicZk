# Proxy vs Reverse Proxy  

## What is a Proxy?
A *proxy* is simply a software that makes requests on behalf of a *client*. All requests have to go through the proxy first. As far as the server is considered, the proxy *is* the client (the server doesn't know the final destination).  

## Proxy Functions
* Block sites  
* Anonymity  
* Logging/keeping track of requests  
* Caching  
* Microservices  

## What is a Reverse Proxy?
A *reverse proxy* is a software that directs the client's request to the actual server. All requests go through the reverse proxy first.  As far as the client is concerned, the reverse proxy *is* the server (the client doesn't know the final destination).

## Reverse Proxy Functions
* Caching  
* Load Balancing  
* Ingress
* Canary Deployment  
* Microservices  

## Other Links
[202206110217](../202206110217) - Introduction to NGINX --> Open source Web server software that handles proxying and reverse proxying

## References
[Proxy vs Reverse Proxy](https://www.youtube.com/watch?v=SqqrOspasag)  

## Tags
#dev
