
# To create resource for S3 bucket 
resource "aws_s3_bucket" "aws_tf_bucket" {
    bucket = "${var.env}- ${var.bucket_name}" 

    tags ={
        Name = "${var.env}- ${var.bucket_name}" 
        Environment = var.env
    } 
}
