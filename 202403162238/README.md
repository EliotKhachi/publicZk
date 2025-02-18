# RDS and Aurora Security Features

* Aurora at-rest encrpytion may be defined at launch time using AWS KMS. The write replica must be encrypted before any read replicas. Must go through a DB snapshot and encryption operation to encrypt an existing, un-encrypted database.  

* In-flight encryption - TLS by default.  
* IAM authentication - IAM roles (preferred) or AWS credentials.  
* Network access - Use security groups. No SSH access by default but is available on RDS custom.  
* Logs - Audit logs can be enabled and sent to CloudWatch to logs for longer retention.  

## Tags
#aws
