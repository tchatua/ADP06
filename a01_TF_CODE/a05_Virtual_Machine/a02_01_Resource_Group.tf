resource "azurerm_resource_group" "vm-rg" {
  name     = var.rg_name
  location = var.rg_location
}

