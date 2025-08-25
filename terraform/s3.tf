resource "aws_s3_bucket" "mybucket" {
    bucket = var.aws_bucket_name

    force_destroy = true # if you want to delete the items from s3 forcefully 
      tags = {
    Name        = "Aws-bucket-12560"
  }
  
}
