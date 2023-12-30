resource "azurerm_subnet" "vm-subnet" {
  name                 = var.vm_subnet
  resource_group_name  = azurerm_resource_group.vm-rg.name
  virtual_network_name = azurerm_virtual_network.vm-vnet.name
  address_prefixes     = var.subnet_cidr_block
}
