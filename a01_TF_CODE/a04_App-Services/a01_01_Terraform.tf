terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.76.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "backend-rg-112420231313"
    storage_account_name = "tchatuastorageaccount"
    container_name       = "tfstate"
    key                  = "tfstate/dev/a04AppService.terraform.tfstate"
  }
}