resource "azurerm_service_plan" "appservice-sp" {
  name                = var.seviceplan
  location            = azurerm_resource_group.appservice_rg.location
  resource_group_name = azurerm_resource_group.appservice_rg.name
  os_type             = var.ostype
  sku_name            = var.skuname
  tags                = var.resource_tags
}

# azurerm_service_plan.appservice-sp.id

