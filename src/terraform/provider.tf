# Configure the AWS Provider
terraform {
  backend "s3" {
    bucket         = "indie-sandbox-bucket-02"
    key            = "test/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "indie-sandbox-dynamodb-01"
    encrypt        = true
  }
}

provider "aws" {
  region = "eu-west-1"
}
