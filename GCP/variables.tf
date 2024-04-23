variable "project_id" {
    default     = "terraform-project-420504"
}

variable "gcp_region" {
    default = "asia-east2"
}

variable "network_name" {
    default = "cloudnetwork"
}

variable "network_mtu" {
    default = "1460"
}

variable "PrivateSubnet1_name" {
    default = "privatesubnet1"
}

variable "PrivateSubnet1_CIDR" {
    default = "10.0.1.0/24"
}

variable "PrivateSubnet2_name" {
    default = "privatesubnet2"
}

variable "PrivateSubnet2_CIDR" {
    default = "10.0.2.0/24"
}

variable "PublicSubnet1_name" {
    default = "publicsubnet1"
}

variable "PublicSubnet1_CIDR" {
    default = "10.0.3.0/24"
}

variable "PublicSubnet2_name" {
    default = "publicsubnet2"
}

variable "PublicSubnet2_CIDR" {
    default = "10.0.4.0/24"
}