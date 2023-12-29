# Model-Based Systems Engineering MVPs

## [MBSE Background](../202312290210)

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
1. Build off of [OpenMBEE](https://github.com/Open-MBEE)  
**Ideas to Incorporate a LLM**  
2. Train an LLM to generate XML/JSON/SysML files (model views).  
3. Train an LLM to update a model in the back-end given natural language inputs.  
4. Train an LLM to query a model.  
Downside is that these ideas require organizations to either trust their data with an LLM or Cloud provider, or have them run their own LLM on premises.  
**Unique Approaches to MBSE**  
5. An app that updates the backend model given SysML files. Every commit consists of new or updated SysML files. The app includes a version control system and prevents a commit when any new or updated SysML file contains conflicting information with the model currently stored in the database.   
6. VS Code plug-in for auto-completion and other helpful features for writing SysML.   
7. A framework, library, or SDK to aide software engineers to develop their models. For example, an SDK for developing integrations with analysis and data [[Hypothesis on MBSE Organizational Shift](../202312110356)]. **The MVP would be a simple model integration CLI utility that can link a script or excel sheet to the model**  

## Why At All and Why Now?
* MBSE adoption is being encouraged by INCOSE, the Department of Defense (DoD), and the National Astronautics and Space Administration (NASA).  
* In addition to the aerospace industry, the automotive and medical industries are also beginning to adopt it.  
* NASA has a vision for MBSE adoption within their organization by 2029. [Future MBSE Vision and Strategy Bridge for NASA](https://ntrs.nasa.gov/api/citations/20210014025/downloads/TM-20210014025.pdf)  
* The Object Management Group (OMG) published a beta specification for version 2 of their Systems Modeling Language, SysMLv2, in June 2023 [[What is SysML?](../202110032315)], leading to a final adopted SysML v2 specification in 2024.  
* The specification includes an open-source REST API and builds upon the expressiveness and versatility of SysML v1.  
* SysmL v2 introduces for the first time a standardized *textual notation* for modeling systems, which makes it easier to build software around it.  

## 10 Ways to Evaluate an Idea
1. Founder-market fit? **Yes**  
2. How big is the market? **Implementing model-based systems engineering and digital engineering practices is strongly recommended by the Department of Defense (DoD), and required by the DoD for some programs. It is also endorsed by NASA [3,4].**  
3. How acute is this problem? **My company is implementing a 2-year plan to incorporate MBSE across the organization.**  
4. Do you have competition and do you have a new insight? **Yes and yes. There are many competing MBSE tool vendors. My insight is that a model-based enterprise should be implemented by software engineers and leveraged by systems engineers. It should not be built by systems engineers. Tooling needs to be developed for software engineers so MBSE can really take off. An SDK gives them flexibility, control, and the power to build their own model-based enterprise (think of FAANG companies building their own internal tools).**  

5. Do you want this? **As a systems engineer, yes. Information is disparate and constantly changing, making it unreliable. Reliable sources of information are the actual engineers, rather than the documents. I envision a model-based enterprise so robust that the information stored within the model is trusted over any engineer.**  
6. Did this only recently become possible or necessary? **SysML v2 will soon be released which introduces a textual notation, making the language easier to work with as a software engineer. This also opens up the avenue to incorporate a large-language-model, which have been gaining capability and popularity.**  
7. Are there good proxies to this idea? **Good proxies to this idea are any IDEs, SDKs, frameworks, or libraries built for the purpose of accelerating software development. You could say that most s/w tools accelerate front-end or back-end development, while my idea is a tool for accelerating model/domain development of an MBSE s/w application.**  
8. Is this an idea you want to work on for years? **Yes. The future of model-based engineering is inevitable and limitless.**  
9. Is this a scalable business? **Yes, this is software.**  
10. Is this a good idea space? **Yes. MBSE can be applied to many industries, not just medical, automotive, or aerospace. There is still a LOT of work to be done in the MBSE space, so there are many options for pivoting. Afterall, the end goal is software that can read and understand customer requirements, generate architectural solutions, conduct trade studies, and arrive upon a fully articulated system/assembly for the customer through automated design and analysis.**  

3 Things that make the idee seem bad but actually make it good:  
1. Difficult or intimidating to get started.  
2. It's in a boring space.  
3. There are existing competitors.   

## References
[incose.org - SysML v2 Events at the INCOSE IW 2023](https://www.incose.org/communities/working-groups-initiatives/mbse-initiative)  

## Tags
#systems #MBSE
