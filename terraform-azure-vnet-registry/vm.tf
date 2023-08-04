# VM
module "vm-sample" {
  source         = "../terraform-azure-vm-module"
  vm_name        = "MyVM"
  subnets        = module.vnet-sample.subnet_ids
  resource_group = local.resource_group_name
}