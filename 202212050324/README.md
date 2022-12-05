# Types of HTTP Requests

There are commonly 9 different types of HTTP request methods.  

## GET
A read operation. These requests only retrieve data. The client cannot send data with this request.  
## HEAD
Identical to `GET` except the response body is ommitted. Used to troubleshoot HTTP response codes and errors.  
## POST
A create operation. Could also be used to update data. Client may send data with the request.   
## PUT
An update/replace operation. Client may send data with the request.  
## DELETE
A delete operation.  
## CONNECT
Establishes a tunnel to the server identified by the target resource. Can be used to upgrade from HTTP to HTTPS.  
## OPTIONS
Describes the communication options for the target resource.  
##TRACE
Performs a message loop-back test. Echoes the request the server received. Useful to check networks with intermediary nodes where the request gets modified along the way.  

## PATCH
A partial update operation.  

## Links
[What is HTTP?](../202206110246)

## References
[HTTP Request Methods](https://developer.mozilla.org/en-US/docs/Web/HTTP/Methods)

## Tags
