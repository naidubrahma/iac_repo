provider "aws" {
  region = "us-west-2"
  access_key = "AKIA35ZMCEMN3XDHXGET"
  secret_key = "TRfHYpzek6J3filmQIkFVXErWcC3FiPK0y2jy7iJ"
}
/*
resource "aws_s3_bucket" "example" {
  bucket = "san-bucket63838146"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_dynamodb_table" "example_1" {
  name         = "san-table"
  hash_key     = "LockID"
  billing_mode = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
  }
}
*/
terraform {
  backend "s3" {
    bucket         = "san-bucket63838146"
    dynamodb_table = "san-table"
    key            = "global/mystatefile/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    
  }
}