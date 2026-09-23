terraform {
  backend "s3" {
    bucket = "sctp-tfstate-ce13"
    key    = "tag/devsecops-3.1/terraform.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_s3_bucket" "workshop" {
  bucket_prefix = "tag-devsecops-workshop-"

  tags = {
    Purpose = "github-actions-workshop"
  }
}