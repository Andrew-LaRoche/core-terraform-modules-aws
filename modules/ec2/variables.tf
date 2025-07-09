#declare instance type, ami id, and instance name variables
#to communicate with main.tf file here in the ec2 module,
#to then communicate with the main.tf in the root module/directory

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