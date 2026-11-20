terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }
}

provider "aws" {
  region = "ap-south-1"
}

resource "aws_iam_user" "s3_reader" {
  name = "project4-s3-readonly-user"
}

resource "aws_iam_user_policy_attachment" "s3_read" {
  user       = aws_iam_user.s3_reader.name
  policy_arn = var.s3_read_policy_arn
}

output "iam_user_arn" {
  value = aws_iam_user.s3_reader.arn
}
