variable "region" {
    description = "The AWS region where resources will be provisioned"
    default     = "us-east-1"
}

variable "vpc_cidr" {
    description = "The ID of the VPC where the EC2 instance will be launched"
    default     = "172.0.0.0/16"
}

variable "publicsubnet1a" {
    default     = "172.0.1.0/24"
}

variable "privatesubnet1a" {
    default     = "172.0.3.0/24"
}

variable "az1a" {
    default     = "us-east-1a"
}

variable "publicsubnet1b" {
    default     = "172.0.2.0/24"
}

variable "privatesubnet1b" {
    default     = "172.0.4.0/24"
}

variable "az1b" {
    default     = "us-east-1b"
}