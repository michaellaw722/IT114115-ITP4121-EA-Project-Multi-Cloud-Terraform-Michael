provider "azurerm" {
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
  name                 = "PS1"

  address_prefixes = [
    "192.168.1.0/24",
  ]
}

resource "azurerm_subnet" "Private_Subnet2" {
  virtual_network_name = azurerm_virtual_network.CloudProjectVPC.name
  resource_group_name  = azurerm_resource_group.CloudProjectGroup.name
  name                 = "PS2"

  address_prefixes = [
    "192.168.2.0/24",
  ]
}
