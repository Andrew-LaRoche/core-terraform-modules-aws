#create an S3 bucket variable to be called in the module
variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "hands-on-terraform-bucket2025"
}