# IAM Policies Structure

A *policy* consists of 3 components:  
1. **Version**: policy language version, usually "2012-10-17"  
2. **Id**: an identifier for policy (optional)  
3. **Statement**: one or more individual statements (required). [[IAM Policy Statement](../202309140422)]  

## Example
```json
{
    "Version": "2012-10-17",
    "Id": "S3-Account-Permissions",
    "Statement": [
        {
            "Sid": "1",
            "Effect": "Allow",
            "Principal": {
                "AWS": ["arn:aws:iam::123456789012:root"]
            },
            "Action": [
                "s3:GetObject",
                "s3:PutObject",
            ],
            "Resource": ["arn:aws:s3:::mybucket/*"]
        }
    ]
}

```
## Links
[IAM Policy](../202309150142)

## Tags
