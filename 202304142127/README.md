# Fine Tuning GPT-3

## What Models Can Be Fine-Tuned?
Currently (4/14/2023), the following base models can be fine-tuned:  
* davinci  
* curie  
* babbage  
* ada  

## Installation
Use the OpenAI CLI (requires python3)  
`pip install --upgrade openai`  

## Prepare training data
THe training data is how you teach GPT-3 what you'd like it to say.  

Your data must be a `JSONL` document where each line is a prompt-completion pair corresponding to a training example.  
```
{"prompt": "<prompt text>", "completion": "<ideal generated text>"}
{"prompt": "<prompt text>", "completion": "<ideal generated text>"}
{"prompt": "<prompt text>", "completion": "<ideal generated text>"}
...
```
Use the CLI data preparation tool to convert **CSV, TSV, XLSX, JSON or JSONL** into a JSONL file ready for fine-tuning:  
`openai tools fine_tunes.prepare_data -f <LOCAL_FILE>`  

See [OpenAI's docs on Preparing your dataset](https://platform.openai.com/docs/guides/fine-tuning/preparing-your-dataset) for formatting requirements, best practices, and specific guidelines.  
**For conditional generation (paraphrasing, summarizing, entity extraction, product description, writing, chatbots, etc.) it's recommended to have at least 500 high quality examples ideally vetted by human experts.**  

## Creating the fine-tuned model
After you've prepared your training data, start your fine-tuning job using the OpenAI CLI:
`openai api fine_tunes.create -t <TRAIN_FILE_ID_OR_PATH> -m <BASE_MODEL>`  
, where BASE\_MODEL is the name of the base model you're starting from (ada, babbage, curie, or davinci).  

This command does the following:  
1. Uploads the file using the files API  
2. Creates a fine-tuning job  
3. Streams events until the job is done (often takes minutes but could take hours if the dataset is large or there are many jobs in the queue)  

## Use the fine-tuned model
You can start making requests to your model by passing its model name as the `model` parameter of a completion request:
OpenAI CLI: `openai api completions.create -m <FINE_TUNED_MODEL> -p <YOUR_PROMPT>`  
You can also make requests via `cURL`, `Python`, or `Node.js`.   



Consult the docs for more details as well as case studies for and examples of datasets used to fine-tune models.  

## References
[OpenAI Fine Tuning Docs](https://platform.openai.com/docs/guides/fine-tuning)

## Tags
#openai
