provider "azurerm" {
    subscription_id = "${var.subid}"
    features {}
}

resource "azurerm_resource_group" "CloudProjectGroup" {
  name     = "${var.RG_name}"
  location = "${var.az_region}"
}

resource "azurerm_virtual_network" "CloudProjectVPC" {
  resource_group_name = azurerm_resource_group.CloudProjectGroup.name
  name                = "${var.Vnet_name}"
  location            = "${var.az_region}"

  address_space = [
    "${var.Vnet_CIDR}",
  ]
}

resource "azurerm_subnet" "Private_Subnet1" {
  virtual_network_name = azurerm_virtual_network.CloudProjectVPC.name
  resource_group_name  = azurerm_resource_group.CloudProjectGroup.name
  name                 = "${var.Private_Subnet1_name}"

  address_prefixes = [
    "${var.Private_Subnet1_CIDR}",
  ]
}

resource "azurerm_subnet" "Private_Subnet2" {
  virtual_network_name = azurerm_virtual_network.CloudProjectVPC.name
  resource_group_name  = azurerm_resource_group.CloudProjectGroup.name
  name                 = "${var.Private_Subnet2_name}"

  address_prefixes = [
    "${var.Private_Subnet2_CIDR}",
  ]
}

resource "azurerm_subnet" "Public_Subnet1" {
  virtual_network_name = azurerm_virtual_network.CloudProjectVPC.name
  resource_group_name  = azurerm_resource_group.CloudProjectGroup.name
  name                 = "${var.Public_Subnet1_name}"

  address_prefixes = [
    "${var.Public_Subnet1_CIDR}",
  ]
}

resource "azurerm_subnet" "Public_Subnet2" {
  virtual_network_name = azurerm_virtual_network.CloudProjectVPC.name
  resource_group_name  = azurerm_resource_group.CloudProjectGroup.name
  name                 = "${var.Public_Subnet2_name}"

  address_prefixes = [
    "${var.Public_Subnet2_CIDR}",
  ]
}


resource "azurerm_network_security_group" "aks_nsg" {
  name                = "${var.az_NSG_name}"
  location            = azurerm_virtual_network.CloudProjectVPC.location
  resource_group_name = azurerm_resource_group.CloudProjectGroup.name

  tags = {
    Name = "AKS NSG"
  }
}