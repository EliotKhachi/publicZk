# Future Opportunities Model-Based Systems Engineering

## Pre-Requisite Reading
What is Model-Based Systems Engineering (MBSE) and what value does it provide? [What is Model-Based Systems Engineering? ](../202110052023)  

## Why Now?
* The Object Management Group (OMG) published a beta specification for version 2 of their Systems Modeling Language, SysMLv2, in June 2023 [[What is SysML?](../202110032315)], leading to a final adopted SysML v2 specification in 2024. This introduces for the first time a standardized textual notation for modeling systems, which makes it easier to establish software rules for creating, reading, updating, and deleting system models.  
* 

The second is immature tooling, and is where the real opportunity for innovation lies. Good software talent can be put to use here to develop cutting edge tools. The current state of the art MBSE tools are mediocre at best and cost $50k per enterprise license. The competition is weak and the upside is huge.

Before discussing the next generation of MBSE tools, one needs to first understand the value that systems engineering provides. Next one needs to understand the advantage of the model-based approach to SE over the traditional approach, and the potential thereof. I am arguing that the current state of the art tools fail to live up to that potential.

The current state of the art does everything it claims to do poorly and in a disconnected way:
◦ Requirement definition and traceability
◦ Model generation
◦ Model integration with analysis results
◦ Model integration with test results

With the current state of the art, the user opens the tool, opens a project, and sees a directory tree of requirements and models on the left, and a display/working window on the right, with a toolbar at the top. Pretty typical layout for a software application. The user can create requirements, build models, add connections, import analysis or test results, etc.

The problem is that the user is left to his/her own discretion to add these elements and connections manually, one at a time, unsystematically. The software provides no instructions, guidance, or built-in-tests to make sure the user builds a good model (coherent, consistent, etc). This makes the tools themselves difficult to learn and clunky to use— and prone to being wrong anyway (human error). The whole problem systems engineering tries to address is that for large systems, the number of connections vastly outnumbers the number of components. It is extremely difficult to lay out manually each of these connections. MBSE is supposed to solve that but it’s simply impossible to maintain the model given our tools. Furthermore, MBSE should provide engineers a “single source of truth”. The model should contain all up-to-date information about the system. If you can’t even maintain the model, then this isn’t true either. You need full traceability and highly autonomous workflows to keep the model up to date with the team’s developments on a daily basis.

I argue that the model should also be trusted to have ultimate development/design/test authority (if only it can speak 🤔)

The potential here is to revamp the MBSE tool’s UI to seamlessly guide the user through systems development and verification processes following the SD&V Vee model, while helping the user build the model and traceability within it. Additionally, all team members, not just systems engineers should have access to certain portions of the model and work within it such that their workflows automatically update the model.

Come in LLMs and SysML…

## References
[incose.orrg - SysML v2 Events at the INCOSE IW 2023](https://www.incose.org/communities/working-groups-initiatives/mbse-initiative)  

## Tags
#MBSE
