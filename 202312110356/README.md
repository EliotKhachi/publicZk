# What Does The Future of Systems Engineering Look Like?

## The Discipline of Systems Engineering
The future of systems engineering is a hot topic nowadays, at least in the aerospace industry. Before diving into the future, it's worth exploring some background. [What is Systems Engineering?](../202201080221) and why does it exist as a practice? Put simply, it is the art of building complex systems. Systems that are sufficiently complex, whether in breadth or depth, or both, are impossible for a single person to fully comprehend, let alone design, build, and test.  

How, then, have humans been able to accomplish miraculous technological marvels [1]? 1) By creating abstractions and 2) by delegating responsibility. Complexity is managed by breaking up the system into chunks and assigning individual people, i.e. IPT (Integrated Product Team) leads [2], to oversee each of them. The *lead systems engineer (SE)* oversees the IPTs and makes sure they develop the system the customer actually wants. As far as the lead SE is concerned, each chunk, or *subsystem* is a black box. The lead SE understands the function of each black box, its interfaces, and what interactions are necessary between them to produce the desired system behavior. Similarly, each IPT breaks up the subsystem into components, delegates them, and understands each one as a black box with interfaces that produce a desired subsystem behavior [3]. This is the power of abstractions. They allow us to isolate and simplify problems; we only have so much RAM in our heads.  

There is a problem, however, with this approach. The more complex the system, the more engineers and abstractions. The more we compartmentalize, the less we see what the customer actually wants. "What are we building again and why?", is a question every good systems engineer asks himself everyday [4]. Systems engineers and the discipline of systems engineering as a whole, address this disconnect by defining and communicating *requirements* at each layer, while enforcing traceability to the customer's requirements, and by planning *tests* to verify those requirements are being met at each layer . There is however, still a problem with the traditional systems engineering approach:  
1. It is a waterfall approach to project management [[The Vee Model ](../202110032218)], and it is difficult to change requirements.  
2. Enforcing full traceability is much easier said than done, especially with our current toolset, namely, natural language and at times back-of-the-envelope calculations.  

## The Future of Systems Engineering
Almost everyone in the field of systems engineering will agree that the future of systems engineering is MBSE, or model-based systems engineering. 
It takes a lot of time and effort to build a model, and it's a team effort. Building a model is very valuable because it offers a single source of truth for the system your designing/building, and offers especially recently due to the Department of Defense. That is why engineering firms are paying up to $80k per software license per year to do so. The approach of the [current state of the art](../202312302215) tool vendors have [systems engineers](../202202122112) build the model and integrations, collaborating with subject matter experts as needed. Usually, because there is so much detail contained within a complex system, the system engineers only build out the system a few level of abstractions down, defining the functional interfaces at each abstraction layer.   
The issue with this approach is that system engineers alone can't encompass all the detail into the model, so all other engineers need to participate. But other engineers can't participate at this point because it costs too much for the organization. The annual cost of employing MBSE on a program, at only a few abstration layers, is at least the cost of a systems engineer's annual salary (~$100k) plus the tool's annual cost ($80k). The tools are simply priced too high at the moment to be widespread across an organizations.  


**Hypothesis:**  MBSE will become the mainstream approach to designing systems, in any field. The tools will become highly available and cheap to use. All the engineers on the project will be able to access and edit the model. The main constraint to developing systems has and will continue to be man-labor and ingenuity from great engineers.  

will be the labor required to generate the model. and submit pull requests to merge into the production build of the model. I am using software development terms here intentionally.  

 All the engineers will be able to access and edit the model via a simple web interface [[Implementing a Model-Based Enterprise ](../202110032326)]. The model will live inside repository that the org version-controls ([Git](https://git-scm.com/)) and manages in an agile software development fashion ([Atlassian - Agile](https://www.atlassian.com/agile), [[Atlassian-Jira](https://www.atlassian.com/software/jira]). Systems engineers manage the product development through Git.  

## Footnotes
[1] The Apollo missions come to mind.
[2] There are many different words we can use to describe this role. Project engineer, project lead, \<name of subsystem\> lead, etc.. For the sake of discussion, we'll call him/her an IPT.  
[3] I am simplifying here for the sake of being concise. In reality, SEs and lead engineers can also be involved in component-level design decisions.  
[4] Gentry Lee's talk captured this perfectly at 10:30 in this talk in 2016 [YouTube - So You Want To Be a Systems Engineer?](https://www.youtube.com/watch?v=E6U_Ap2bDaE)

## Tags
#systems #MBSE
