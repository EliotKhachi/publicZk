# What is a TLS/SSL Certificate?

Transport Layer Security (TLS) and its predecessor Secure Sockets Layer (SSL) are widely used security protocols with two functions:  
1. Authentication and verification  
2. Data encryption (in-flight)  

Each TLS/SSL session consists of two keys:  
* the public key used to encrypt the information (client-side)  
* a corresponding private key is used to decrypt the information (server-side)  

## Types of Certificates
* Self-signed - least secure   
* Domain validated - checks that the SSL certificate is owned by the same person who owns the website's domain name  
* Fully authenticated - Organization passed a # of validation procedures to confirm the existence of the business, ownership of the domain, and the user's authority to apply for the certificate

## References
[DigiCert - Beginner's Guide to TLS/SSL Certificates](https://www.digicert.com/resources/beginners-guide-to-tls-ssl-certificates-whitepaper-en-2019.pdf)  

## Tags
