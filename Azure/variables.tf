variable "subid" {
    default     = "<your subscription_id>"
}

variable "az_region" {
    default     = "eastasia"
}

variable "RG_name" {
    default     = "CloudProject"
}


variable "Vnet_name" {
    default     = "cloudnetwork"
}

variable "Vnet_CIDR" {
    default     = "192.168.0.0/16"
}

variable "Private_Subnet1_name" {
    default     = "privatesubnet1"
}

variable "Private_Subnet1_CIDR" {
    default     = "192.168.1.0/24"
}

variable "Private_Subnet2_name" {
    default     = "privatesubnet2"
}

variable "Private_Subnet2_CIDR" {
    default     = "192.168.2.0/24"
}



variable "Public_Subnet1_name" {
    default     = "publicsubnet1"
}

variable "Public_Subnet1_CIDR" {
    default     = "192.168.3.0/24"
}

variable "Public_Subnet2_name" {
    default     = "publicsubnet2"
}

variable "Public_Subnet2_CIDR" {
    default     = "192.168.4.0/24"
}

variable "az_NSG_name" {
    default     = "aks-nsg"
}