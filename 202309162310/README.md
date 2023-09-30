# Amazon Simple Queue Service (SQS)

Amazon Simple Queue Service (SQS) is used to decouple application tiers with a queue to optimize performance and cost efficiency [[Application Tiers]](./202309162313).  

![image](./Sat_Sep_16_06:13:24_PM_PDT_2023.png)

One example of using this service is to de-couple an application tier that serves the website from the tier that serves video content. This way, an autoscaling group can be made for each tier, and **each can scale independently**. [[AWS Auto Scaling Group (ASG)](./202309152017)]  

## References
[Amazon Simple Queue Service (SQS)](https://aws.amazon.com/pm/sqs/?trk=84951f72-fb87-4173-b32b-ced557711d5a&sc_channel=ps&ef_id=CjwKCAjwpJWoBhA8EiwAHZFzfqEsotVfstfhzKTRp_sRQkMWzNRLB8qbf-xoGsfp5QzCh5sPNc27vRoCGaYQAvD_BwE:G:s&s_kwcid=AL!4422!3!658520967044!!!g!!!19852662602!149878733460)

## Tags
#aws
