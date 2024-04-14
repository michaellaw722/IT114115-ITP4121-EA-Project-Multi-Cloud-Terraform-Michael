resource "azurerm_virtual_network" "VPC" {
  resource_group_name = azurerm_resource_group.Terraform.name
  name                = "VPC"
  location            = "East Asia"

  address_space = [
    "10.0.0.0/16",
  ]
}

resource "azurerm_subnet" "Private_Subnet" {
  virtual_network_name = azurerm_virtual_network.VPC.name
  resource_group_name  = azurerm_resource_group.Terraform.name
  name                 = "PS"

  address_prefixes = [
    "10.0.0.1/24",
  ]
}

resource "azurerm_resource_group" "Terraform" {
  name     = "Terraform"
  location = "East Asia"
}
