## Modeling to Support DoD Acquisition Lifecycle Events

## Introduction
The purpose of this paper is to provide suggestions for supporting DoD system acquisition lifecycle events (SRR, SFR, SSR, PDR, CDR).  

## How To Use This Document
1. Review definitions.  
2. Decide which lifecycle events you want your models to support.  
3. Describe the [essential information needed for each requirement](https://apps.dtic.mil/sti/pdfs/AD1168439.pdf#page=29)  
4. See suggestions for how to [model each requirement](https://apps.dtic.mil/sti/pdfs/AD1168439.pdf#page=31)  

## Definitions

* [System Requirements](../202403242315)  
* [Customer Requirements](../202403242300)
* [System Requirement Review (SRR)](../202403242257)
* [System Functional Review (SFR)](../202403242324)

## Appendix A - Information Needed to Support Lifecycle Events
|Type of Information|Modeling Technique|
|-------------------|------------------|
|Requirement||
|Use Case||
|System Function||
|Interface||

**Associations Matrix**  

|Government requirements|System Requirements|System Use Cases|Operational Use Cases|System Functions|Interfaces|Other Model Artifacts|
|-----------------------|-------------------|----------------|---------------------|----------------|----------|---------------------|
|Government requirements|c1|c2|c3|c4|c5|c6|c7|
System Requirements||c8|c9|c10|c11|c12|c13|
System Use Cases|||c14|c15|c16|c17|c18|
Operational Use Cases||||c19|c20|c21|c22|
System Functions|||||c23|c24|c25|
Interfaces||||||c25|c26|
Other Model Artifacts|||||||c27|  


|**Association**|**Association Description**|**Event Needed**|
|-|-|-|
|C1|Indicates a parent/child relationship betw een one or more Government requirements.|SRR|
|C2|Indicates that a high-level system requirement w as introduced in response to one or more Government requirements.|SRR|
|C3|Indicates that a high-level system use case w as introduced in response to one or more Government requirements.|SSR|
|C4|Indicates that a high-level operational use case w as introduced in response to one or more Government requirements.|SRR|
|C5|Indicates that a high-level system function w as introduced in response to one or more Government requirements.|SRR|
|C6|Indicates that an interface w as introduced in response to one or more Government requirements.|SRR|
|C9|Indicates that a high-level system use case is refined by one or more high-level system requirements.|SRR|
|C13|Indicates that a high-level system requirement is refined by one or more model artifacts (e.g., “The system shall provide an operator training mode.” is refined by a state diagram which shows the relationship between operational mode and training mode and the activities that can be performed by an operator in training mode).|SRR|
|C15|Indicates that a high-level operational use case comprises one or more system use cases.|SRR|
|C16|Indicates that a high-level system use case is supported by one or more high-level system functions.|SRR|
|C20|Indicates that a high-level operational use case is supported by one or more high-level system functions.|SRR|

## Appending B - Modeling Framework, Language, and Tool Overviews

## References
[Modeling to Support DoD Acquisition Lifecycle Events](https://apps.dtic.mil/sti/pdfs/AD1168439.pdf)  

## Tags
#systems #MBSE #research
