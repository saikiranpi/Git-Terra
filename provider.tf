provider "aws" {
  region = "us-east-1"
}

terraform {
  backend "s3" {
    bucket = "testinbucketdeletelater"
    key    = "vpc/terraform.tfstate"
    region = "us-east-1"
  }
}
