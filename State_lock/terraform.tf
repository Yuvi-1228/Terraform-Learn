# AWS Provider 
terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "6.0.0-beta3"
    }
  }
  # For Remote backend call from Remote Backend folder where we created S3 and dynamodb 
  backend "s3" {
    bucket = "merobucket123321"
    key = "terraform.tfstate"
    #region = "default"
    dynamodb_table = "tf-test-table"
  }
}