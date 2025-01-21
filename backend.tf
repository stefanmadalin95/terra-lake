terraform {
  backend "s3" {
    bucket         = "terraform-state-bucket-terra-lake"
    key            = "terraform.tfstate"
    region         = "eu-central-1"            
    encrypt        = true              
    dynamodb_table = "terraform-state"
  }
}