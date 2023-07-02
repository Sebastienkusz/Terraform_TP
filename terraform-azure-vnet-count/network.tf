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

# Subnets 
resource "azurerm_subnet" "Subnet" {
  count                = local.subnet_count
  name                 = "Subnet-${count.index}"
  resource_group_name  = local.resource_group_name
  virtual_network_name = azurerm_virtual_network.VNet.name
  address_prefixes     = [cidrsubnet(local.network_base, 8, count.index + 1)]
}
