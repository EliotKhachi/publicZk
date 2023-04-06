# OpenAI QuickStart Notes

## Fundamentals
OpenAI's APIs consist of a simple, flexible, and extremely powerful interface.  
Its usage consists of the following: you input text as a **prompt**, and the API will return a text **completion** that attempts to match whatever instructions or context you gave it.   

i.e. prompt: *Suggest one name for a horse*; completion: *Flippy*  

* You can fine-tune the model to give you a more tailored completion by giving examples to communicate patterns or nuances.

i.e. prompt: *Suggest three names for an animal that is a superhero.*;
manually suggested completion:
*Animal: Cat
Names: Captain Sharpclaw, Names: Captain Sharpclaw, Agent Fluffball, The Incredible Feline
Animal: Dog
Names: Ruff the Protector, Wonder Canine, Sir Barks-a-Lot
Animal: Horse
Names:*

* Another way to control the API's completions is by adjusting the **temperature**.  
A temperature of **0** tells the model to be confident, accurate, and deterministic in its response, while increasing the temperature to a maximum value of **1** will result in more diverse and risky completions.   

## Tags
#ai
