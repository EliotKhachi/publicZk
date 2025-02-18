# Create an OIDC provider in your account

```bash
aws iam create-open-id-connect-provider \
    ‐‐url "https://token.actions.githubusercontent.com" \
    ‐‐thumbprint-list "938fd4d98bab03faadb97b34396831e3780aea1" \
    -‐client-id-list 'sts.amazonaws.com'
```

## Tags
