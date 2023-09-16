# Amazon SNS

Amazon Simple Notification Service (SNS) is used to send one message to many servers.  

![image](https://s3.us-west-1.amazonaws.com/zettelimages/Sat_Sep_16_04:50:56_PM_PDT_2023.png)

The "event publisher", in this case the buying service, sends a message to one SNS topic. The SNS service then *publishes* an action to the subscribers downstream.  

You can create SNS topics and assign as many "event subscribers" to listen to the SNS topic notifications.  

## Tags
#aws
