resource "azurerm_public_ip" "vm-pub-ip" {
  count = var.vm_count
  name  = "${var.vm_public_ip}-${count.index}"
  # name                = var.vm_public_ip
  resource_group_name = azurerm_resource_group.vm-rg.name
  location            = azurerm_resource_group.vm-rg.location
  allocation_method   = var.allocation_method

  tags = var.resource_tags
}

# azurerm_public_ip.vm-pub-ip.name