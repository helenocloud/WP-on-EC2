terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket         = "tf-remote-state-8805-virginia"
    key            = "level2.tfstate"
    region         = "us-east-1"
    dynamodb_table = "tf-remote"
  }
}

provider "aws" {
  region = "us-east-1"
}
