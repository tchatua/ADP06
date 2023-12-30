variable "storageaccount" {
  type        = string
  description = "Storage Account for Cloud Backend"
}

variable "accounttier" {
  type        = string
  description = "Account Tier"
}

variable "accountreplicationtype" {
  type        = string
  description = "Account Replication Type"
}

variable "allownesteditemstobepublic" {
  type        = string
  description = "Allow Nested Items to be Public"
}
