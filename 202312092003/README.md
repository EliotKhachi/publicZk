# Model-Based Systems Engineering MVPs

## Background
* What is Model-Based Systems Engineering (MBSE) and what value does it provide? [[What is Model-Based Systems Engineering? ](../202110052023)]  
* A "model" is a digital representation of a system [[What is a System](../202110032156)]. In the backend, the model is stored in a NoSQL database. The model cannot be shown all at once; therefore, in the front-end, there are various "views" of the model. Each view is encoded as an XML/JSON/SysML file and has a graphical representation, kinda like a [block diagram](https://en.wikipedia.org/wiki/Block_diagram). Only in MBSE, the language used to describe a system, SysML, is much more expressive than block diagrams [[What is SysML?](../202110032315)].  

## Example of a SysML File and Model View 
![image](https://www.eliotkhachi.dev/resources/zettel-images/Sun_Dec_10_11:47:55_AM_PST_2023.png)

## Current State Of The Art (Competitors)
* Cameo Systems Modeler - ~$60k per year per license to use --> supports model-generation and requirement management. Also supports exporting the model as an XML file.  
* Ansys ModelCenter - ~$80k per year per license to use --> supports model integrations with analysis and data.  
* Dassault Systems - Unknown
* Siemens - Unknown

Current competitors license modeling software to engineering firms and support various functions (may require additional plug-ins at additional costs):  
* Requirement definition and traceability  
* Model generation  
* Model integration with analysis and data   
* Model-generated documents  

*Keep in mind that the international council of system enginers (INCOSE) has been pushing for MBSE adoption since 2011. It has not yet been adopted deeply nor widely. Part of the question I'm trying to answer is why hasn't it been adopted yet? Why is it so difficult?*

## MVPs 
**Ideas to Incorporate a LLM**  
1. Train an LLM to generate XML/JSON/SysML files (model views).  
2. Train an LLM to update a model in the back-end given natural language inputs.  
3. Train an LLM to query a model.  

Downside is that these ideas require organizations to either trust their data with an LLM or Cloud provider, or have them run their own LLM on premises.  

**Unique Approaches to MBSE**  
Engineers perform modeling tasks through a typical software GUI layout: main toolbar, working directory, and main workspace. What if instead of a GUI...
1. They worked through an IDE with a text editor pane and a graphical pane. Users write JSON/XML/SysML directly and the IDE updates the model in the backend. **The MVP would be the IDE with no backend.**  
    * requires an acute familiarity with SysML (arguably a very good thing for the organization)  
2. They worked with an SDK. Organizations continue to build their models their own way, but use the SDK to develop integrations. An SDK gives them flexibility, control, and the power to build their own model-based enterprise (think of FAANG companies building their own internal tools). **The MVP would be a simple model integration CLI utility that can link a script or excel sheet to the model**
    * requires an organizational shift to adopt more software practices and hire software engineers (arguably where all industries are headed).   

## Why At All and Why Now?
* MBSE adoption is being encouraged by INCOSE, the Department of Defense (DoD), and the National Astronautics and Space Administration (NASA).  
* In addition to the aerospace industry, the automotive and medical industries are also beginning to adopt it.  
* NASA has a vision for MBSE adoption within their organization by 2029. [Future MBSE Vision and Strategy Bridge for NASA](https://ntrs.nasa.gov/api/citations/20210014025/downloads/TM-20210014025.pdf)  
* The Object Management Group (OMG) published a beta specification for version 2 of their Systems Modeling Language, SysMLv2, in June 2023 [[What is SysML?](../202110032315)], leading to a final adopted SysML v2 specification in 2024.  
* The specification includes an open-source REST API and builds upon the expressiveness and versatility of SysML v1.  
* SysmL v2 introduces for the first time a standardized *textual notation* for modeling systems, which makes it easier to interact with software.  

## Other Notes
[Hypothesis on MBSE Organizational Shift](../202312110356)

## References
[incose.org - SysML v2 Events at the INCOSE IW 2023](https://www.incose.org/communities/working-groups-initiatives/mbse-initiative)  

## Tags
#systems
