variable "vnetwork" {
  type        = string
  description = "Azure Virtual Network Name"
}

variable "vnet_cidr_block" {
  type        = list
  description = "Network Address Space"
}
