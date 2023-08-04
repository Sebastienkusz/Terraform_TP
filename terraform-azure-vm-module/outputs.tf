output "ids" {
  value       = [ for vm in azurerm_linux_virtual_machine.VM : vm.id ]
  description = "The list of IDs of the virtual network"
}

output "ips" {
  value       = [ for vm in azurerm_linux_virtual_machine.VM : vm.private_ip_address ]
  description = "The list of private IPs of the virtual network"
}