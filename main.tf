provider "aws" {
  region = "us-west-2"
  profile    = "${var.profile}"
  region     = "${var.region}"
}
/*
resource "aws_s3_bucket" "example" {
  bucket = "san-bucket-john"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}

resource "aws_dynamodb_table" "example_1" {
  name         = "san-table-john"
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
    bucket         = "san-bucket-john"
    dynamodb_table = "san-table-john"
    key            = "global/mystatefile/terraform.tfstate"
    region         = "us-west-2"
    encrypt        = true
    
  }
}
