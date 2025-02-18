# Amazon S3 More Features

## S3 Storage Classes and Use Cases
|Storage Class|Type of Data|Access Frequency|Time to Access|
|-------------|------------------------|----------------|--------------|
|Standard|Any|Frequent|milliseconds|
|Intelligent Tiering|Any|Unknown or changing access patterns|milliseconds|
|Standard-IA|Long-lived|Infrequent|milliseconds|
|One Zone-IA|long-lived and re-createable|Infrequent|milliseconds|
|Glacier Instant Retrieval|Long-lived|Frequent|milliseconds| 
|Glacier Flexible Retrieval|Long-lived|Unknown or changing access patterns|minutes; free bulk retrievals in 5-12 hours.|
|Glacier Deep Archive|Long-lived|Infrequent|12-48 hours retrieval|

## Management Tools For Granular Data Control
* S3 Storage Class Analysis is used to analyze data access patterns, and transfer data to lower-cost storage classes.  
* Data transfer events and data expiration times are documented in the S3 Lifecycle Policy.  
* S3 Cross-Region Replication (CRR) is used to replicate data between regions.  
* S3 Same Region Replication is used to replicate data within a region.  
* S3 Object Lock ise used to enforce *no deletion* for a retention period, write-once-read-many (WORM) policies.  
* S3 Inventory reports your objects, metadata, and encryption status.  
* S3 batch operations can be done on billions of objects; i.e. copy objects to another S3 bucket, replace object tag sets, modify access controls, or restore archived objects from an S3 Glacier.  
* S3 works with AWS Lambda to automate activites, alerts, and workflows without additional infrastructure.  
* Big Analytics

## References
[Amazon S3 Storage Classes](https://aws.amazon.com/s3/storage-classes/)

## Tags
#aws
