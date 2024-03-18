# Amazon S3

Amazon Simple Storage Service (Amazon S3) is an object storage service that offers industry-leading scalability, data availability, security, and performance.  

## How Do They Work
* Object values are the content of the body. The max object size is 5 TB.  
* Metadata - list of text key / value pairs  
* Tags
* Version ID

Each object has a *key*, which is the URL *after* the name of the bucket, i.e. s3://my-bucket/*my_folder1/another_folder/my_file.txt*  
In actuality, bucket objects are not stored in folders. Each object is simply found by a key.  

## More Info
[Amazon S3 More Features](../202309110524)  
[Amazon S3 Security](../202403172333)  
[Amazon S3 Glacier](../202309120137)  
[Amazon S3 Encryption](../202309152208)  

## References
[AWS Docs - Amazon S3](https://docs.aws.amazon.com/AmazonS3/latest/userguide/Welcome.html)  

## Tags
#aws
