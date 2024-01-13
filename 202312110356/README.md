# Hypothesis for an Organizational Shift in MBSE Practices

It takes a lot of time and effort to build a model, and it's a team effort. Building a model is valued very highly, especially recently due to the Department of Defense. That is why engineering firms are paying up to $80k per software license per year to do so. The approach of the [current state of the art](../202312302215) tool vendors have [systems engineers](../202202122112) build the model and integrations, collaborating with subject matter experts as needed. Usually, because there is so much detail contained within a complex system, the system engineers only build out the system a few level of abstractions down, defining the functional interfaces at each abstraction layer.   

The issue with this approach is that system engineers alone can't encompass all the detail into the model, so all other engineers need to participate. But other engineers can't participate at this point because it costs too much for the organization. The annual cost of employing MBSE on a program, at only a few abstration layers, is at least the cost of a systems engineer's annual salary (~$100k) plus the tool's annual cost ($80k). The tools are simply priced too high at the moment to be widespread across an organizations.  

**Hypothesis:**  MBSE will become the mainstream approach to designing systems, and it will be commoditized and highly available at little cost. All the engineers will be able to access and edit the model via a simple web interface [[Implementing a Model-Based Enterprise ](../202110032326)]. The model will live inside repository that the org version-controls ([Git](https://git-scm.com/)) and manages in an agile software development fashion ([Atlassian - Agile](https://www.atlassian.com/agile), [[Atlassian-Jira](https://www.atlassian.com/software/jira]). Systems engineers manage the product development through Git.  

## Tags
#systems #MBSE
