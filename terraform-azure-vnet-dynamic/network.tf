data "azurerm_resource_group" "current" {
  name = local.resource_group_name
}

resource "time_static" "toto" {}

# Virtual Network
resource "azurerm_virtual_network" "VNet" {
  name                = local.network_name
  address_space       = [local.network_base]
  location            = local.location
  resource_group_name = local.resource_group_name
  tags                = local.tags
}

# Subnet 1
resource "azurerm_subnet" "Subnet_1" {
  name                 = local.subnets_name[0]
  resource_group_name  = local.resource_group_name
  virtual_network_name = azurerm_virtual_network.VNet.name
  address_prefixes     = [cidrsubnet(local.network_base, 8, 1)]
}

# Subnet 2
resource "azurerm_subnet" "Subnet_2" {
  name                 = local.subnets_name[1]
  resource_group_name  = local.resource_group_name
  virtual_network_name = azurerm_virtual_network.VNet.name
  address_prefixes     = [cidrsubnet(local.network_base, 8, 2)]
}