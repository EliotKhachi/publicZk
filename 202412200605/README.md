# Prompt Engine

A prompt engine is a system of JSX components that take in props (data) and render prompts (text).  

It allows you to construct complex prompts using components, much like you can build complex user interfaces with React.  

You can inject data into prompt components, and render them inside other prompt components to yield the complete prompt to then pass into the LLM. You can chain a sequence of LLM calls, populating a series of prompt components to approximate complex reasoning for the user-specific query given the domain you are building in.

## Examples
The most basic LLM call is feeding a user query directly to the LLM:
Query --> LLM --> Response

Usually, an LLM call would actually look something like this:  
User Query --> Prompt Template --> LLM --> Response

An sophisticated LLM call using a Prompt Engine could look something like this:

                                        Data Fetch --> Prompt Template 1 --> miniLLM --> Parse Response --> *Logic* --> ...
                                            |
User Query --> Data Fetch --> LLM --> Parse response --                                                                     Data Fetch 5 --> Prompt Template 4 --> large LLM --> final response
                                            |                                                                   |
                                        Data Fetch --> Prompt Template 2 --> miniLLM --> Parse Response --> *Logic*
                                                                                                                |
                                                                                                            Data Fetch 4 --> Prompt Template 3 --> largeLLM --> final response

## Tags
#llm
