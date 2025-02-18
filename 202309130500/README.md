# Amazon CloudWatch

Amazon CloudWatch collects and visualizes real-time logs, metrics, and event data in automated dashboards to streamline your infrastructure and application maintenance.  

## Important Metrics
* EC2 istances: CPU Utilization, Status Checks, Network (not RAM)
    * Default metricsevery 5 minutes
    * Option for Detailed Monitoring ($$$): metrics every 1 minute
* EBS volumes: Disk Read/Writes
* S3 buckets: BucketSizeBytes, NumberOfObjects, AllRequests
* Billing: Total Estimated Charge
* Service Limits: how much you've been using a service API
* Custom metrics: push your own metrics

## Import Alarms
Alarms are used to trigger notifications for any metric.  
Alarms actions include:
* Autoscaling
* stop, terminate, reboot, or recover an EC2 instance
* SNS notifications

## References
[Amazon CloudWatch](https://aws.amazon.com/cloudwatch/)

## Tags
#aws
