# S3 Bucket Policy

An S3 bucket policy consists of **Statements** Each **Statement** is a rule that specifies *who* has access to what *API* calls on *which* objects in the bucket. 

```json
{
    "Version": "2012-10-17",
    "Statement" [
        {
            "Sid": "PublicRead",
            "Effect": "Allow",
            "Principal": "*",
            "Action": [
                "s3:GetObject"
            ],
            "Resource": [
                "arn:aws:s3:::examplebucket/*"
            ]
        }
    ]
}
```
The above bucket policy allows public reads to all objects in `examplebucket` by everyone. The policy only consists of one statement that is 
* named "PublicRead"  
* specifying an `"Allow"` rule for an `s3:GetObject` action  
* for everyone (`"Principle": "*"`)
* to all objects in `examplebucket` (`"arn:aws:s3:::examplebucket/*"` (note the wildcard after the `/` in the arn.  

Bucket policies an be used to set permissions for people outside of your AWS account, even anyone on the web.  

## References
[AWS Docs - S3 Policy Examples](https://docs.aws.amazon.com/AmazonS3/latest/userguide/example-walkthroughs-managing-access.html)  

## Tags
