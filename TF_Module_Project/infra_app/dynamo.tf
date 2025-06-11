resource "aws_dynamodb_table" "tf-dynamodb-table" {
  name           = "${var.env}-tf-infra-table"
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = var.db_hash_key

  attribute {
    name = var.db_hash_key
    type = "S"
  }
  tags = {
    Name        = "${var.env}-tf-infra-table"
    Environment = var.env
  }
}