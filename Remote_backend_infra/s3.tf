# To create resource for S3 bucket 
resource "aws_s3_bucket" "aws_tf_bucket" {
    bucket = "merobucket123321"  

    tags = {
      Name = "merobucket123321"
      # Environment = "Test"
    }
}