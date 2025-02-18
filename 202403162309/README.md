# AWS Secrets Manager

AWS Secrets Manager helps you manage, retrieve, and rotate database credentials, application credentials, OAuth tokens, API keys, and other secrets throughout their lifecycles.  

## Why
* Stores your security credentials behind the Secrets Manager service, and make calls to it when needed. *You assign an IAM role to your application to use the Secrets Manager Service.*  
* Reduce the risk associated with storing your credentials in your application. *You never want to store credentials in the source code. The traditional approach is to store them as environment variables on the instance, and reference those environment variables in the source code. If the security group of the instance is configured properly, then storing the credentials as environment variables on that instance is pretty safe-- no?*  
* Configure and automatic rotation schedule for your secrets, further improving security.  

## References
[AWS Docs - Secrets Manager](https://docs.aws.amazon.com/secretsmanager/latest/userguide/intro.html)

## Tags
#aws
