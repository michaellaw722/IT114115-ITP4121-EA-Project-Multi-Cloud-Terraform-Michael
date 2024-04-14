variable "region" {
    description = "The AWS region where resources will be provisioned"
    type        = string
    default     = "ap-east-1"
}

variable "subnet_id" {
    description = "The ID of the subnet where the EC2 instance will be launched"
    type        = string
}

variable "vpc_id" {
    description = "The ID of the VPC where the EC2 instance will be launched"
    type        = string
}