# Prompt Tuning

Prompt tuning a large language model is the process of tweaking a template prompt as opposed to fine-tuning the model's parameters. The user's prompt get inserted into the template prompt before being sent to the model. It achieves comparable performance to fine-tuning when the model is larger than 10 billion parameters.  

For models between 1 and 10 billion parameters, prompt-tuning v2 achieves comparable performance to fine-tuning. v2 includes 0.1% to 3% of trainable parameters per task.  

For models between 100 million and 1 billion parameters, fine-tuning is still drastically better than prompt-tuning.  

## References
[P-Tuning v2](https://arxiv.org/pdf/2110.07602)

## Tags
#llm
