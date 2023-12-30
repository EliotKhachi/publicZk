# MBSE MVP Ideas

## Software Development Approach to MBSE [[Hypothesis on MBSE Organizational Shift](../202312110356)]
* A CLI utility / framework / library / SDK  
    * Used to initialize a master repo for a project  
    * Includes a build tool that parses SysML and checks for syntax, circular dependencies, and contradicting property definitions.  
    * Includes an SDK that allows for the integration of 3rd party software such as MATLAB, Cameo, Jupyter, Python, C++, Fortran, CAD/Simulation data output files, etc.  

## Generate SysML Faster
* Train an LLM to generate XML/JSON/SysML files (model views).  
* VS Code plug-in for auto-completion and other helpful features for writing SysML.  

## Create the Model Faster
* Train an LLM to update a model in the back-end given natural language inputs.  

## Query/Navigate the Model More Efficiently
* Train an LLM to query a model.  

## Downsides
Downside to using LLMs is that they require organizations to either trust their data with an LLM service provider in the cloud, or have them run their own LLM on premises. The former would be a difficult sell to the military or any secretive private venture, and the latter would take a lot of computational power (for now).  

## Tags
#MBSE
