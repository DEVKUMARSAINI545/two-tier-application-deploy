terraform {
  backend "s3" {
    bucket = "aws-bucket-12560"
    key = "terraform.tfstate"
    region = "ap-south-1"
     dynamodb_table = "terraform_state_locksDB" # but still powerfull
    # use_lockfile = true  #new method depriciated in terraform 1.9 v+
    
  }
}
