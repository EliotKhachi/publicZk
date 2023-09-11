# Amazon S3 More Features

## S3 Storage Classes

|Storage Class|Recommended Type of Data|Access Frequency|Time to Access|
|-------------|------------------------|----------------|--------------|
|Standard|Any|Frequent|milliseconds|
|Intelligent Tiering|Any|Unknown or changing access patterns|milliseconds|
|Standard-IA|Long-lived|Infrequent|milliseconds|
|One Zone-IA|long-lived and re-createable|Infrequent|milliseconds|
|Glacier Instant Retrieval|Long-lived|Frequent|milliseconds| 
|Glacier Flexible Retrieval|Long-lived|Unknown or changing access patterns|minutes; free bulk retrievals in 5-12 hours.|
|Glacier Deep Archive|Long-lived|Infrequent|12-48 hours retrieval|

## Tags
#aws
