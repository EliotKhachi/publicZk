# Amazon SNS

Amazon Simple Notification Service (SNS) is used to send one message to many *subscribers*.  

The "event publisher" sends a message to one SNS topic. The SNS service then *publishes* an action to the subscribers downstream.  

You can create SNS topics and assign as many "event subscribers" to listen to the SNS topic notifications. Event subscribers could be SQS, Lambda, Kinesis Data FireHose, Emails, SMS & Mobile notifications, HTTP(S) Endpoints, etc.  

## Tags
#aws
