# a01_03_All_Resources_Variables.tf
resource_tags = {
  TF_File_Folder = "a04_App-Services"
  Project        = "ADP06"
  CreateBy       = "Terraform"
  Owner          = "Tchatua"
  Author         = "tchattua@gmail.com"
  Environment    = "Develop"
  Costcenter     = "Development"
}

# a02_02_Resource_Group_Variablee.tf
rg_name     = "appservicerg"
rg_location = "eastus"

# a03_02_Service_Plan_Variables.tf 
seviceplan = "appservice-serviceplan"
ostype     = "Linux"
skuname    = "F1"

# a04_02_Linux_WebApp_Variables.tf
linuxwebapp = "linux-web-app-tchatua"
