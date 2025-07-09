#create an S3 bucket
resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

tags = {
    Name = var.bucket_name
  }
}