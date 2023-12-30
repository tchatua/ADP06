resource "azurerm_network_interface" "vm-nic" {
  count = var.vm_count
  name  = "${var.vm_nic_card}-${count.index}"
  # name                = var.vm_nic_card
  location            = azurerm_resource_group.vm-rg.location
  resource_group_name = azurerm_resource_group.vm-rg.name

  ip_configuration {
    name                          = "internal"
    subnet_id                     = azurerm_subnet.vm-subnet.id
    private_ip_address_allocation = "Dynamic"
    public_ip_address_id          = azurerm_public_ip.vm-pub-ip[count.index].id
    # public_ip_address_id = azurerm_public_ip.vm-pub-ip.id
  }
}
