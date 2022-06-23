# How Web Servers Work - Deep Dive

## Overview
To fetch a webpage, your browser sends a request to the web server, which searches for the requested file in its own storage space. Upon finding the file, the server reads it, processes it as-needed, and sends it to the browser. Let's look at those steps in more detail.  

## Hosting Files
Technically, you could host all those files on your own computer, but it's far more convenient to store files all on a dedicated web server because they:  
* Are always up and running  
* Have a dedicated IP address  
* Are maintained by a third party  

## Proxys
In reality, the client probably isn't speaking directly to the server. Instead, a client speaks to a *proxy*, and the server speaks to a *reverse proxy*. There are good reasons for this --> [202206110220](../202206110220) - Proxy vs Reverse Proxy 

## References
[What is a Web Server - Mozilla Docs](https://developer.mozilla.org/en-US/docs/Learn/Common_questions/What_is_a_web_server)  

## Tags
#dev
