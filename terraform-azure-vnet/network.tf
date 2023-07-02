# Virtual Network
resource "azurerm_virtual_network" "VNet" {
  name                = "VNet"
  address_space       = ["10.1.0.0/16"]
  location            = local.location
  resource_group_name = local.resource_group_name
  tags                = local.tags
}

# Subnet 1
resource "azurerm_subnet" "Subnet_1" {
  name                 = "subnet_1"
  resource_group_name  = local.resource_group_name
  virtual_network_name = azurerm_virtual_network.VNet.name
  address_prefixes     = ["10.1.1.0/24"]
}

# Subnet 2
resource "azurerm_subnet" "Subnet_2" {
  name                 = "subnet_2"
  resource_group_name  = local.resource_group_name
  virtual_network_name = azurerm_virtual_network.VNet.name
  address_prefixes     = ["10.1.2.0/24"]
}