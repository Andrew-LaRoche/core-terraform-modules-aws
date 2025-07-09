variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_name" {
  description = "Name of the VPC"
  type        = string
  default     = "terraform vpc"
}
variable "subnet_cidr" {
  description = "CIDR block for the subnet"
  type        = string
  default     = "10.0.0.0/24"
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