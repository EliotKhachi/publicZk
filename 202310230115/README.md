# Connect Github Actions to Actions in AWS

1. [Create an OIDC provider in your account](../202310230118). This is a trust relationship that allows GitHub to authenticate and be authorized to perform actions in your account.  
2. Create an IAM role in your account. You will then scope the IAM role’s trust relationship to the intended parts of your GitHub organization, repository, and branch for GitHub to assume and perform specific actions.  
3. Assign a minimum level of permissions to the role.  
4. Create a GitHub Actions workflow file in your repository that can invoke actions in your account.  
5. Audit the role’s use with Amazon CloudTrail logs.  

## References
[AWS Security Blog - Use IAM roles to connect Github Actions to actions in AWS](https://aws.amazon.com/blogs/security/use-iam-roles-to-connect-github-actions-to-actions-in-aws/)

## Tags
#git #aws
