resource "azurerm_resource_group" "localrg" {
  name     = var.rg_name
  location = var.rg_location

  tags = var.resource_tags
}
