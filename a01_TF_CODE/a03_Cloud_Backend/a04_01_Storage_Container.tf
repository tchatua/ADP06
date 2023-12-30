resource "azurerm_storage_container" "container" {
  name                  = var.storagecontainer
  storage_account_name  = azurerm_storage_account.storageaccount.name
  container_access_type = var.containeraccesstype
}
