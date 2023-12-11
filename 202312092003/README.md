# Future of Model-Based Systems Engineering

## Pre-Requisite Reading
What is Model-Based Systems Engineering (MBSE) and what value does it provide? [What is Model-Based Systems Engineering? ](../202110052023)  

## Definitions
* When I say "model", I'm referring to a digital representation of a system [[What is a System ](../202110032156)]. You can picture a graph database with nodes and edges. A block diagram is one *view* of the model (a subsection of that graph). The model and views of it can be encoded as XML, JSON, or SysML files.  

## Current State Of The Art (Competitors)
* Cameo Systems Modeler - ~$60k per year per license to use --> supports model-generation and requirement management  
* Ansys ModelCenter - ~$80k per year per license to use --> supports model integrations with analysis and data.  
* Dassault Systems - Unknown
* Siemens - Unknown

Current competitors license modeling software to engineering firms that  support (may require additional plug-ins at additional costs)  
* Requirement definition and traceability  
* Model generation  
* Model integration with analysis and data   
* Model-generated documents  

Engineers do the above tasks all through typical software GUI layout: main upper toolbar, left working directory task-pane, and main workspace task-pane in the center.  

## Minimum Viable Product Ideas
1. Train a GPT model to generate models (XML/JSON/SysML) for you. Competes with Cameo Systems Modeler. $60k a year pricepoint.  
2. Build

## Hypothesis
MBSE will be implemented by software engineers throughout the organization internally using an SDK. The reason why MBSE adoption has been slow and we haven't been seeing the "digital transformation" as promised is because we don't have software engineers dedicated to building models and developing MBSE workflows. Instead, we're relying on our mechanical engineers and analysts to learn and use licensed modeling software with external IT support. Organizations that would like to employ MBSE need to take ownership of building the digital thread themselves. We just need to provide the organization the proper tools: **Introducing the MBSE SDK**. The SDK would provide all the same functionality as 

The difficult part is model integration, mainly because engineers use so many different tools and the given modeling software needs to support all those different types of integrations.  

## Why At All and Why Now?
* NASA has a vision for MBSE adoption within their organization by 2029. [Future MBSE Vision and Strategy Bridge for NASA](https://ntrs.nasa.gov/api/citations/20210014025/downloads/TM-20210014025.pdf)  
* NASA understands the need for modeling and scripting skills [NASA Citation 20205006908 - Suggested MBSE Implementation Plan Approaches](https://ntrs.nasa.gov/api/citations/20205006908/downloads/REVISED%20FINAL%20-%20Suggested%20MBSE%20Implementation%20Plan%20Approaches%20Webcast.pdf)  
* INCOSE has been pushing for MBSE adoption as early as 2011. 
* The Object Management Group (OMG) published a beta specification for version 2 of their Systems Modeling Language, SysMLv2, in June 2023 [[What is SysML?](../202110032315)], leading to a final adopted SysML v2 specification in 2024.  
* The specification also includes an open-source REST API and builds upon the expressiveness and versatility of SysML v1.  
* SysmL v2 introduces for the first time a standardized *textual notation* for modeling systems, which makes it easier for software to create, read, update, and delete the model:   
![image](https://www.eliotkhachi.dev/resources/zettel-images/Sun_Dec_10_11:47:55_AM_PST_2023.png)

## References
[incose.org - SysML v2 Events at the INCOSE IW 2023](https://www.incose.org/communities/working-groups-initiatives/mbse-initiative)  

## Tags
#systems
