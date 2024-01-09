provider "aws" {
  region     = "${var.region}"
}
/*
resource "aws_s3_bucket" "example" {
  bucket = "san-bucket-john1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_dynamodb_table" "example_1" {
  name         = "san-table-john1"
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
    bucket         = "san-bucket-john1"
    dynamodb_table = "san-table-john1"
    key            = "global/mystatefile/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    
  }
}
