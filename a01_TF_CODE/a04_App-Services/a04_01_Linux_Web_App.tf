resource "azurerm_linux_web_app" "linux-web-app-tchatua" {
  name                = var.linuxwebapp
  resource_group_name = azurerm_resource_group.appservice_rg.name
  location            = azurerm_resource_group.appservice_rg.location
  service_plan_id     = azurerm_service_plan.appservice-sp.id

  site_config {
    always_on = false
  }

  tags = var.resource_tags
}


