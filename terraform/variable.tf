variable "aws_bucket_name" {
    default = "aws-bucket-12560"
    type = string
}

variable "dynamoDb_name" {
    default =  "terraform_state_locksDB"
    type = string
  
}
