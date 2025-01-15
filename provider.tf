terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.83.1"
    }
  }

  backend "s3" {
    bucket = "tf-tuts-state-pedro-steil"
    key    = "state"
    region = "us-east-1"
  }
}