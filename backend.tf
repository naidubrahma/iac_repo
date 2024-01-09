/*resource "aws_s3_bucket" "example" {
  bucket = "san-bucket-john1"

  tags = {
    Name        = "My bucket"
    Environment = "Dev"
  }
}
resource "aws_dynamodb_table" "example_1" {
  name             = "san-table-john1"
  hash_key         = "LockID"
  billing_mode     = "PAY_PER_REQUEST"

  attribute {
    name = "LockID"
    type = "S"
}
}
*/
