# Model-Based Systems Engineering MVPs

## Background
* What is Model-Based Systems Engineering (MBSE) and what value does it provide? [What is Model-Based Systems Engineering? ](../202110052023)  
* When I say "model", I'm referring to a digital representation of a system [[What is a System ](../202110032156)]. You can picture a graph database with nodes and edges. A block diagram is one *view* of the model (a subsection of that graph). The model and views of it can be encoded as XML, JSON, or SysML files.  
* MBSE adoption is being encouraged by the international council of systems engineers (INCOSE), the Department of Defense (DoD), and the National Astronautics and Space Administration (NASA). In addition to the aerospace industry, the automotive and medical industries are also beginning to adopt it.  

## Example of a SysML File and Model View 
![image](https://www.eliotkhachi.dev/resources/zettel-images/Sun_Dec_10_11:47:55_AM_PST_2023.png)

## Current State Of The Art (Competitors)
* Cameo Systems Modeler - ~$60k per year per license to use --> supports model-generation and requirement management. Also supports exporting the model as an XML file.  
* Ansys ModelCenter - ~$80k per year per license to use --> supports model integrations with analysis and data.  
* Dassault Systems - Unknown
* Siemens - Unknown

Current competitors license modeling software to engineering firms and support various functions (may require additional plug-ins at additional costs)  
* Requirement definition and traceability  
* Model generation  
* Model integration with analysis and data   
* Model-generated documents  

Engineers perofrm the above tasks through a typical software GUI layout: main upper toolbar, left working directory task-pane, and main workspace task-pane in the center. 

## MVP Ideas to Beat Competitors
1. Train an LLM to generate models (XML/JSON/SysML) for you. Should probably include a built-in text editor to correct any improperly generated text.  
    * Downside is that it requires organizations to either trust their data with a LLM/Cloud provider, or have them run their own LLM on premises.  
    * Competes with Cameo Systems Modeler. Could charge a higher pricepoint since a natural-language interface is easier to learn and more effective. 
2. Build a simple model integration tool that updates the model by linking an internally-built analysis tool. The user configures the inputs, links the script, and the script's outputs updates the model. Could start with integrating Excel/Python/C/C++ scripts.   
    * Competes with Ansys ModelCenter

## Why At All and Why Now?
* NASA has a vision for MBSE adoption within their organization by 2029. [Future MBSE Vision and Strategy Bridge for NASA](https://ntrs.nasa.gov/api/citations/20210014025/downloads/TM-20210014025.pdf)  
* INCOSE has been pushing for MBSE adoption since 2011. 
* The Object Management Group (OMG) published a beta specification for version 2 of their Systems Modeling Language, SysMLv2, in June 2023 [[What is SysML?](../202110032315)], leading to a final adopted SysML v2 specification in 2024.  
* The specification also includes an open-source REST API and builds upon the expressiveness and versatility of SysML v1.  
* SysmL v2 introduces for the first time a standardized *textual notation* for modeling systems, which makes it easier for software to create, read, update, and delete the model.   

## Other Notes
[Hypothesis on MBSE Organizational Shift](../202312110356)

## References
[incose.org - SysML v2 Events at the INCOSE IW 2023](https://www.incose.org/communities/working-groups-initiatives/mbse-initiative)  

## Tags
#systems
