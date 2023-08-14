terraform {
  required_version = "~> 1.0"
  required_providers {
    aws = {
        source = "hashicorp/aws"
        version = "~> 3.0"
    }
  }
  backend "s3" {
    bucket = "elasticbeanstalk-us-east-1-776602941589"
    key = "dev/terraform.tfstate"
    region = "us-ease-1"
    #dynamodb_table = "terraform-lock"
  }
}