# Amazon S3 Security

## Permissions
You can control permissions on an S3 bucket on a user basis and resource basis. A user can access an S3 object if he/she has the ALLOW IAM permissions *OR* the resource policy ALLOWS it *AND* there's no explicit deny.  

1. User permissions.  
use IAM policies to control which API calls should be allowed for a specific user.  
2. Resource permissions  
* Bucket Policies - bucket wide rules; allows cross account (most common)  
* Object Access Control List (ACL) - finer grain (less common)  
* Bucket Access Control List (ACL) - bucket wide rules; (least common)  

## Encryption
You can also encrypt objects in Amazon S3 using encryption keys.  

## Tags
