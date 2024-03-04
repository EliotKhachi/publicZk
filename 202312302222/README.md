# MBSE Product Ideas

## MBSE SDK (a software development approach to MBSE)
This MBSE product is predicated on the idea that MBSE will take off within organizations when orgs develop their own own internal tools. Our product would be an SDK that builds upon the [SysML v2 Pilot Implementation](https://github.com/Systems-Modeling/SysML-v2-Pilot-Implementation), and enables various engineering organizations to build out their own tools and integrations according to their discipline (medical, automotive, aerospace, consumer devices, etc.)  
1. Users configure the application by going through some minimal set-up/installation instructions:  
    * git fork our project  
    * Purchase an authentication key to access the SDK  
    * `docker-compose` the full-stack application (React, Java Spring Boot, PostGreSQL)  
2. From there, users can write SysML in the `sysml` directory and upon running the application, our build tool validates the SysML, and opens the root SysML view in the browser. The user can interact with it, clicking on the nodes and going to other views specified in the SysML files.  
3. Users can also build upon the base project (using our Java SDK) to integrate with other programs, i.e. CAD, ERP software, MATLAB, Powerpoint, Microsoft Word, etc... Resources such as documentation are built automatically upon running the application.   

## MBSE Web App (no-code approach)
This MBSE MVP is a web app where users build out the model by creating their nodes and edges, and connections all within the UI. No writing SysML. It is a more typical and mainstream approach to MBSE, currently utilized by Dassault Systems and other competitors.  

## Build the Model Faster
* Train an LLM to generate XML/JSON/SysML files (model views) from traditional documentation (text input and images).  
* VS Code plug-in for auto-completion and other helpful features for writing SysML.  
* Train an LLM to make POST requests to the SysML V2 standard API given natural language inputs. 

## Query/Navigate the Model More Efficiently
* Train an LLM to make GET requests to the SysML V2 Standard API.  

## Tags
#MBSE
