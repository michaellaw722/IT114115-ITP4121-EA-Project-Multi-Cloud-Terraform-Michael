provider "azurerm" {
    subscription_id = "8130e691-6554-4046-a6a1-0e03085ef7fa"
    features {}
}

resource "azurerm_resource_group" "CloudProjectGroup" {
  name     = "CloudProject"
  location = "eastasia"
}

resource "azurerm_virtual_network" "CloudProjectVPC" {
  resource_group_name = azurerm_resource_group.CloudProjectGroup.name
  name                = "cloudnetwork"
  location            = "eastasia"

  address_space = [
    "192.168.0.0/16",
  ]
}

resource "azurerm_subnet" "Private_Subnet1" {
  virtual_network_name = azurerm_virtual_network.CloudProjectVPC.name
  resource_group_name  = azurerm_resource_group.CloudProjectGroup.name
  name                 = "privatesubnet1"

  address_prefixes = [
    "192.168.1.0/24",
  ]
}

resource "azurerm_subnet" "Private_Subnet2" {
  virtual_network_name = azurerm_virtual_network.CloudProjectVPC.name
  resource_group_name  = azurerm_resource_group.CloudProjectGroup.name
  name                 = "privatesubnet2"

  address_prefixes = [
    "192.168.2.0/24",
  ]
}

resource "azurerm_subnet" "Public_Subnet1" {
  virtual_network_name = azurerm_virtual_network.CloudProjectVPC.name
  resource_group_name  = azurerm_resource_group.CloudProjectGroup.name
  name                 = "publicsubnet1"

  address_prefixes = [
    "192.168.3.0/24",
  ]
}

resource "azurerm_subnet" "Public_Subnet2" {
  virtual_network_name = azurerm_virtual_network.CloudProjectVPC.name
  resource_group_name  = azurerm_resource_group.CloudProjectGroup.name
  name                 = "publicsubnet2"

  address_prefixes = [
    "192.168.4.0/24",
  ]
}


resource "azurerm_network_security_group" "aks_nsg" {
  name                = "aks-nsg"
  location            = azurerm_virtual_network.CloudProjectVPC.location
  resource_group_name = azurerm_resource_group.CloudProjectGroup.name

  tags = {
    Name = "AKS NSG"
  }
}