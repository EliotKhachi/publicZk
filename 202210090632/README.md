# Model View Controller


The **Model-view-controller (MVC)** is a software architectural pattern commonly used for developing web, desktop, mobile, and console-based applications.  

* The MVC separates application concerns predictably to enforce maintainability and scalability.  

* The MVC is all about who can talk to whom.  

* The MVC divides program logic into three interconncted components:  

1. Model [Domain Layer] - A class that represents domain data.  

2. View [User Interface Layer] - Concerned with presenting data to the user and accepting input from the user.  

3. Controller [User Interface Layer] - Mediates between the view and the model. It is an implementation of the *inversion of control* principle [202210100408](../202210100408).  

The *service* [202210100444](../202210100444) handles the model. The controller executes methods in the view and service to coordinate between them. The view doesn't know about the controller or the service. All components know about the model.  

## Tags
#dev #software
