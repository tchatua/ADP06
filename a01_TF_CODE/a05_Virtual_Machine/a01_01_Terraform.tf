terraform {
  required_version = ">= 1.0.0"
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "3.76.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "devopstchatuarg"
    storage_account_name = "tchatuastorageaccount"
    container_name       = "tfstate"
    key                  = "tfstate/vm.terraform.tfstate"
  }
}