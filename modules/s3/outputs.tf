#output the name of the S3 bucket created by the module
output "bucket_name" {
  value = aws_s3_bucket.this.bucket
}   

#output the unique identifier of the S3 bucket or ARN
output "bucket_arn" {
  value = aws_s3_bucket.this.arn
}