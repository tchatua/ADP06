resource "azurerm_storage_account" "storageaccount" {
  name                            = var.storageaccount
  resource_group_name             = azurerm_resource_group.rg_a05.name
  location                        = azurerm_resource_group.rg_a05.location
  account_tier                    = var.accounttier
  account_replication_type        = var.accountreplicationtype
  allow_nested_items_to_be_public = var.allownesteditemstobepublic
  tags                            = var.resource_tags
  
  blob_properties {
    versioning_enabled = true
    container_delete_retention_policy {
      days = 2
    }
  }
}

