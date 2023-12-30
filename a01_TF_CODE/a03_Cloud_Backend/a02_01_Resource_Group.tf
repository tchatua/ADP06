resource "azurerm_resource_group" "rg_a05" {
  name     = var.rg_name
  location = var.rg_location

  tags = var.resource_tags
}


