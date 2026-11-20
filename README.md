# Project 4: IAM User Automation with Terraform

## Objective
Automate the creation of AWS IAM users with controlled S3 read-only permissions using Terraform.

## Technologies Used
- AWS IAM
- Terraform
- AWS CLI
- Git and GitHub

## Resources Created
1. IAM user: project4-s3-readonly-user
2. AWS managed policy: AmazonS3ReadOnlyAccess
3. IAM user policy attachment

## Implementation
- Created an IAM user using Terraform.
- Stored the S3 policy ARN in variables.tf.
- Attached the AmazonS3ReadOnlyAccess policy.
- Verified the IAM user and policy attachment.

## Terraform Commands
terraform init
terraform fmt
terraform validate
terraform plan
terraform apply

## Testing
- Terraform deployment: Successful
- IAM user creation: Successful
- S3 read-only policy attachment: Successful
- IAM principal simulation: Explicit deny due to AWS Organizations restrictions

The AWS Organizations restrictions prevent effective
S3 access in the training environment.

## Cleanup
terraform destroy

## Evidence
Screenshots are available in the screenshots folder.

## Security
AWS credentials and Terraform state files are excluded
from the GitHub repository.
