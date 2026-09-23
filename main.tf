terraform {
  backend "s3" {
    bucket = "sctp-tfstate-ce13"
    key    = "tagitables/devsecops-3.1/terraform.tfstate"
    region = "us-east-1"
  }
}
