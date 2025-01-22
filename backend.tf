terraform {
  backend "s3" {
    bucket         = "terraform-state-287388684891-terra-lake"
    key            = "terraform.tfstate"
    region         = "eu-central-1"
    dynamodb_table = "terraform-state"
  }
  required_version = "> 0.12"
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.32.0"
    }
  }
}