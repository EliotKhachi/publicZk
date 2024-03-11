# RDS Read Replicas

RDS read replicas are used to scale your application's capabilities to read from your RDS database.  

## Features
* You can create up to 15 read replicas in your cluster, within an AZ, across AZs, and even across regions!!! Make sure to update your application's connection to them.  
* Read replicas replicate the write instance asyncronously (eventually consistent)  
* Read replicas can be promoted to their own DB  
* Can be set up as a Multi AZ Disaster Recovery RDS instance (synchronous replication & no longer accepts reads at that point)  

## Tags
#aws #dva
