resource_tags = {
  TF_File_Folder = "a05_Cloud_backend"
  Project        = "ADP06"
  CreateBy       = "Terraform"
  Owner          = "Tchatua"
  Author         = "tchattua@gmail.com"
  Environment    = "Develop"
  Costcenter     = "Development"
}

rg_name                    = "backend-rg-112420231313"
rg_location                = "eastus"
storageaccount             = "tchatuastorageaccount"
storagecontainer           = "tfstate"
accounttier                = "Standard"
accountreplicationtype     = "LRS"
allownesteditemstobepublic = false
containeraccesstype        = "private"
