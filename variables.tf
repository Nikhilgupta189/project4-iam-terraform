variable "s3_read_policy_arn" {
  description = "IAM policy granting read-only S3 access"
  type        = string
  default     = "arn:aws:iam::aws:policy/AmazonS3ReadOnlyAccess"
}
