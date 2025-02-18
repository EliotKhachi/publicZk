# LLM Notes

## Prompting
⁃	depends on the model
⁃	Gpt4 was quite sensitive to the prompt
⁃	Should include things like docs, files, and conversation history
⁃	How do you decide what to put in the context? You have a limited window, and it's not always the best option to fill it if it's irrelevant information  
⁃	How do you truncate inputs?  

Build a Prompt Engine using JSX components that take in data and "render" prompts.  
Cursor uses a “Pre-umpt” engine which separates the data from the prompt template. It takes in the user’s query, identifies its intent, finds the appropriate data needed to fulfill the request, and then finally “renders” (injects that data into) the final prompt. This system makes testing easier because you can test different prompt templates with the same data inputs
Cursor works really well through their ensemble of customized models framed alongside the frontier models that are great at the intense reasoning tasks.

Frontier models are good at planning and making rough sketches for the desired/requested code, but customized models perform better, cheaper, and faster at implementing smaller tasks, for example creating diffs, applying diffs, tab completions , etc.

Basic flow
frontier model outlines a very sketched out, rough desired code change —> a customized model creates the diff —> another customized model applies those code changes to the file

Tricks to get tab completion to work
	⁃	incredibly pre filled token hungry, and they don’t generate many tokens. use sparsed models (mmlu model)
	⁃	Speculative edits
	⁃	Caching is crucial - the LLM input prompt needs to be updated for every keystroke, and you can’t run the model for every keystroke.  Need to design the prompt in such a way to be cache-aware, and re-use KV cache across requests

Reviewing Diffs
	⁃	GitHub code review is designed for the person who produced the code and the reviewer. When an LLM produces the code, we can optimize purely for the experience of the reviewer.
	⁃	Play around with the best UI/UX for showing diffs, reviewing them nd accepting them
	⁃	Reviewing diffs is very manual, and often unproductive in catching bugs. As LLMs take on larger scope tasks, they should be guide you through the verification process, pointing you to the important diffs and prioritizing which ones to view first and differentiating those crucial ones from trivial ones that naturally follow
	⁃	


How to make it fast
The idea - prompt tokens are processed faster than generating tokens, and for most code changes, most of the code stays the same, so we don’t need to generate them again— we can feed them directly into the model as part of the prompt.

Speculative edits - the concept of using a small model to make quick change suggestions and then have a larger model go through  and verify them.

Cursor’s approach of speculative edits - we don’t need to generate any changes for most code blocks, so we chunk them first and first feed them into a model that predicts whether changes are needed. If so, then it generates changes at that line, determines when to stop, and then continues down the file similarly (check if changes need to be made, if not skip, if so generate changes)


## Tags
#llm
