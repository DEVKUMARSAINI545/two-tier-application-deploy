# DynamoDB Table for Terraform State Locking
resource "aws_dynamodb_table" "dynamodb" {
  name           = var.dynamoDb_name
  billing_mode   = "PAY_PER_REQUEST"
  hash_key       = "LockID"

  attribute {
    name = "LockID"
    type = "S"
  }

  tags = {
    Name        = var.dynamoDb_name
    Environment = "dev"
    ManagedBy   = "Terraform"
  }
}
