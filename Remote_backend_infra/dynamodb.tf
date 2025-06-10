resource "aws_dynamodb_table" "tf-dynamodb-table" {
  name           = "tf-test-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }
  tags = {
    Name        = "tf-test-table"
  }
}