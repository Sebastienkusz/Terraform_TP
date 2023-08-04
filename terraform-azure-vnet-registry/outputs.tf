output "vnet_id" {
  value       = module.vnet-sample.vnet_id
  description = "The ID of the virtual network"
}

output "subnet_ids" {
  value       = module.vnet-sample.subnet_ids
  description = "The list of subnet IDs"
}

output "ids" {
  value       = module.vm-sample.ids
  description = "The ID of the virtual network"
}

output "ips" {
  value       = module.vm-sample.ips
  description = "The private IP of the virtual network"
}