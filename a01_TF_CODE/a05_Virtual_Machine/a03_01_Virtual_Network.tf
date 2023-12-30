resource "azurerm_virtual_network" "vm-vnet" {
  name                = var.vnetwork
  address_space       = var.vnet_cidr_block
  location            = azurerm_resource_group.vm-rg.location
  resource_group_name = azurerm_resource_group.vm-rg.name
}


