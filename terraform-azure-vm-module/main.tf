# Network interface
resource "azurerm_network_interface" "vm_network" {
  count               = var.number
  name                = "${var.vm_name}-${count.index+1}-nic"
  location            = var.location
  resource_group_name = var.resource_group

  ip_configuration {
    name                          = "internal"
    subnet_id                     = var.subnet_id
    private_ip_address_allocation = "Dynamic"
  }
}

# VM
resource "azurerm_linux_virtual_machine" "VM" {
  count                           = var.number
  name                            = "${var.vm_name}-${count.index+1}-vm"
  location                        = var.location
  resource_group_name             = var.resource_group
  network_interface_ids           = [azurerm_network_interface.vm_network[count.index].id]
  size                            = "Standard_B1s"
  admin_username                  = "azureuser"
  admin_password                  = "P@ssword"
  disable_password_authentication = false
  computer_name                   = "${var.vm_name}-${count.index+1}-vm"

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts-gen2"
    version   = "latest"
  }
}