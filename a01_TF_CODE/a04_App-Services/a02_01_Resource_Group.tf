resource "azurerm_resource_group" "appservice_rg" {
  name     = var.rg_name
  location = var.rg_location

  tags = var.resource_tags
}


