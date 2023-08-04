# VM
module "vm-sample" {
  source         = "../terraform-azure-vm-module"
  vm_name        = "MyVM"
  subnet_id      = values(module.vnet-sample.subnet_ids)[0]
  resource_group = local.resource_group_name
  number         = 2
}