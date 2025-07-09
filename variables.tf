variable "region" {
  description = "AWS region to create resources in"
  type        = string
  default     = "us-east-1"
}

variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}
#note this VPC name is different than the one in the VPC module and will be chosen
variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "demo-vpc"
}
#note this subnet has a different default CIDR block than the one in the VPC module and will be chosen
variable "subnet_cidr" {
  description = "CIDR block for the public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "Availability zone for the subnet"
  type        = string
  default     = "us-east-1a"
}

variable "subnet_name" {
  description = "Name of the subnet"
  type        = string
  default     = "terra-sub-pub-1"
}

variable "igw_name" {
  description = "Name of the internet gateway"
  type        = string
  default     = "myigw"
}

variable "instance_type" {
  description = "The type of instance to create"
  default     = "t2.micro"
}

variable "ami_id" {
    description = "The AMI ID to use for the instance"
    default     = "ami-05ffe3c48a9991133" # Example AMI ID, replace with your own
}

variable "instance_name" {
  description = "The name of the instance"
  default     = "my-instance"
}

variable "bucket_name" {
  description = "Name of the S3 bucket"
  type        = string
  default     = "hands-on-terraform-bucket2025"
}