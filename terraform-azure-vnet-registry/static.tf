# Datas of resource group
data "azurerm_resource_group" "current" {
  name = local.resource_group_name
}

# Fix time
resource "time_static" "time" {}