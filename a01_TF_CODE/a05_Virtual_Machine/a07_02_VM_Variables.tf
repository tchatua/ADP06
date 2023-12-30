variable "vm_name" {
  type        = string
  description = "VM Name"
}

variable "size_vm" {
  type        = string
  description = "VM Size"
}

variable "user_name_id" {
  type        = string
  description = "User name ID"
}

variable "password_id" {
  type        = string
  description = "Password ID"
}

variable "disable_password_authentication" {
  type        = bool
  description = "disable Password Authentication"
}
