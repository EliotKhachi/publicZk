# Types of HTTP Requests

There are commonly 9 different types of HTTP request methods.  

GET
    A read operation. Returns data, HTML, CSS or the like. The client cannot send data with the request.
POST
    Often an insert or create operation, though may also represent an update. The client may send data with the request.
PUT
    An update operation. The client may send data with the request.
DELETE
    A delete operation.
HEAD
    The identical response as GET but with no payload (HTML, CSS, data). Useful for troubleshooting HTTP response codes and headers.
OPTIONS
    Returns HTTP methods that are supported for the given path.
PATCH
    A partial update. The client may send data with the request.
CONNECT
    Used to escalate from HTTP to HTTPS. HTTPS encrypts requests and responses before they travel through the network.
TRACE
    Echos the request the server received. Useful to check how intermediate network nodes modify the original request. 

## Tags
