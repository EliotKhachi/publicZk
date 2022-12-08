# RESTful vs Console MVC 

The differences between a RESTful or Spring MVC and a Console MVC reside in the purpose of each software architecture layer.  

## Differences
|           |RESTful MVC | Console MVC |
|-----------|------------|-------------|
| Model     |Controls the HTTP Response.| Controls what gets printed to the console.|
| View      | HTTP content; either an HTML template or JSON serializer. The HTML template merges with the model and is returned in the response. Spring MVC generates the JSON. | Print statements that get concatenated and printed to the console after merging with the model.|
|Controller | Using annotations, Spring MVC recognizes controllers and maps HTTP requests to Controller methods.| A Contrller in a Console MVC defines the core methods that call your service and view, including the main run loop.|

## Similarities
|           |MVC |
|-----------|------------|
| Model     |Java/Spring Objects that define the domain data of your application.| 
| View      | Presents data to the user and accepts input.|
|Controller | Java classes. Mediates between the view and model.|


## More - Difference between a RESTful Web Service and Traditional MVC

**Traditional MVC -** Performs server-side rendering of the data to HTML.
[Model View Controller](../202210090632)  

**RESTful Web Service -** Populates and returns an object, and the object data is written directly to the HTTP response as JSON.

## References
[Spring Rest Service Guide](https://spring.io/guides/gs/rest-service/)

## Tags
#spring #dev
