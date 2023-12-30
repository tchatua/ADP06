resource "azurerm_linux_virtual_machine" "devops-vm-112420230214" {
  depends_on = [azurerm_network_interface.vm-nic]
  count      = var.vm_count
  name       = "${var.vm_name}-${count.index}"
  # name                            = var.vm_name
  resource_group_name             = azurerm_resource_group.vm-rg.name
  location                        = azurerm_resource_group.vm-rg.location
  size                            = var.size_vm
  admin_username                  = var.user_name_id
  admin_password                  = var.password_id
  disable_password_authentication = var.disable_password_authentication
  network_interface_ids = [
    azurerm_network_interface.vm-nic[count.index].id,
    # azurerm_network_interface.vm-nic.id,
  ]

  admin_ssh_key {
    username   = "adminuser"
    public_key = file("~/.ssh/id_rsa.pub")
  }

  os_disk {
    caching              = "ReadWrite"
    storage_account_type = "Standard_LRS"
  }

  source_image_reference {
    publisher = "Canonical"
    offer     = "0001-com-ubuntu-server-jammy"
    sku       = "22_04-lts"
    version   = "latest"
  }
  # computer_name = "Tchatua-VM-01-${count.index}"
  computer_name = "Tchatua-VM-01"
}