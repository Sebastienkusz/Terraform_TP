# Vnet and Subnets
module "vnet-sample" {
  source         = "akirosit/vnet-sample/azurerm"
  version        = "1.0.2"
  resource_group = local.resource_group_name
  vnet_cidr      = local.network_base
  location       = local.location
  subnet_cidrs   = local.subnets
  tags           = local.tags
}