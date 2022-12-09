# Spring/RESTful MVC vs Console MVC 

The differences between a RESTful or Spring MVC and a Console MVC reside in the return values of the controller methods.  

## First, the Similarities
|           |MVC |
|-----------|------------|
| Model     |Java/Spring Objects that define the domain data of your application.| 
| View      | Presents data to the user and accepts input.|
|Controller | Java classes. Mediates between the view and service.|

## Now, the Differences
|           |RESTful MVC | Console MVC |
|-----------|------------|-------------|
|Controller | Controller methods return HTTP statuses, JSONs, and other HTTP responses. Using annotations, Spring MVC maps HTTP requests to mapped ontroller methods.| A Controller in a Console MVC only has void methods that print to the console.|
| Model     |Controls the HTTP Response.| Controls what gets printed to the console.|
| View      | HTTP content; either an HTML template or JSON serializer. The HTML template merges with the model and is returned in the response. Spring MVC generates the JSON. | Print methods that get concatenate inputs from the model and print to the console| 



## More - RESTful vs Traditional MVC

**Traditional MVC -** Performs server-side rendering of the data to HTML.
[Model View Controller](../202210090632)  

**RESTful Web Service -** Populates and returns an object, and the object data is written directly to the HTTP response as JSON.

## References
[Spring Rest Service Guide](https://spring.io/guides/gs/rest-service/)

## Tags
#spring #dev
