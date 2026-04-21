terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 6.0"
    }
  }


backend "s3" {
    bucket = "remote-state-pu"  # Replace with your unique bucket name
    key    = "terraform-eks-sg-rules"
    region = "us-east-1"
    encrypt = true
    use_lockfile = true
  }
}
# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}