# a01_03_All_Resources_Variables.tf
resource_tags = {
  TF_File_Folder = "a05_Virtual_Machine"
  Project        = "ADP06"
  CreateBy       = "Terraform"
  Owner          = "Tchatua"
  Author         = "tchattua@gmail.com"
  Environment    = "Develop"
  Costcenter     = "Development"
}
vm_count = 2

# a02_02_Resource_Group_Variable.tf
rg_name     = "vm-rg"
rg_location = "eastus"

# a03_02_Virtual_Network_Variable.tf
vnetwork        = "vm-network"
vnet_cidr_block = ["192.168.0.0/16"]

# a04_02_Subnet_Variables.tf
vm_subnet         = "vm-subnet"
subnet_cidr_block = ["192.168.1.0/24"]

# a05_02_Public_IP-Variables.tf
vm_public_ip      = "public-ip"
allocation_method = "Static"

# a06_02_NIC_Variables.tf
vm_nic_card = "nic_card"

# a07_02_VM_Variables.tf
vm_name                         = "devops-vm"
size_vm                         = "Standard_B1s" # VCPUs = 1 ; RAM = 1 GB
user_name_id                    = "adminuser"
password_id                     = "adminuser@2023"
disable_password_authentication = false

