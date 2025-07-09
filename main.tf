#Provision a provider pulling from hashicorp source
terraform {
    required_version = ">= 1.5.0"
    required_providers {
        aws = {
            source  = "hashicorp/aws"
            version = "~> 5.0"
        }
    }
    #initialize the backend for remote state management
    backend "s3" {
        bucket         = "hands-on-terraform-bucket-0630"
        key            = "hands-on-terraform-bucket-0630/backend/backend.tf"
        region         = "us-east-1"
        encrypt        = true
    }
}

module "vpc" {
    source = "./modules/vpc"
    vpc_cidr = var.vpc_cidr
    vpc_name = var.vpc_name
    subnet_cidr = var.subnet_cidr
    availability_zone = var.availability_zone
    subnet_name = var.subnet_name
    igw_name = var.igw_name
}

#configure the provider for the proper region
    provider "aws" {
        region = "us-east-1"
    }

#Provision a VPC with a CIDR block using a module:

#provision an EC2 instance in the us-east-1 region using a module
module "ec2_instance" {
    source        = "./modules/ec2"
    instance_type = var.instance_type
    ami_id        = var.ami_id
    instance_name = var.instance_name

}


#provision an S3 bucket in the us-east-1 region using a module
# We need a secure remote backend for state management
module "s3" {
    source = "./modules/s3"
    bucket_name = var.bucket_name
}

#output for VPC ID:
output "vpc_id" {
    value = module.vpc.vpc_id
}
#output for Subnet ID:
output "subnet_id" {
    value = module.vpc.subnet_id
}
#output for internet gateway ID:
output "internet_gateway_id" {
    value = module.vpc.internet_gateway_id
}