output "ids" {
  value       = [ for vm in azurerm_linux_virtual_machine.main : vm.id ]
  description = "The list of IDs of the virtual network"
}

output "ips" {
  value       = [ for vm in azurerm_linux_virtual_machine.main : var.public_access ? vm.public_ip_address : vm.private_ip_address ]
  description = "The list of private IPs of the virtual network"
}