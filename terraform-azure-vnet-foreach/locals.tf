locals {
  subscription_id     = "c56aea2c-50de-4adc-9673-6a8008892c21"
  user                = "Sebastien"
  resource_group_name = "Sebastien_K"
  location            = data.azurerm_resource_group.current.location
}

locals {
  network_base = "10.1.0.0/16"
  network_name = "VNet-foreach"
  subnets = {
    "subnet-bastion" = "10.1.0.0/24"
    "subnet-app"     = "10.1.1.0/24"
    "subnet-db"      = "10.1.2.0/24"
  }
}

locals {
  tags = {
    TP       = basename(abspath(path.root))
    Owner    = local.user
    DeployID = formatdate("YYYY-MM-DD", time_static.toto.rfc3339)
  }
}