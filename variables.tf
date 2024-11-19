variable "vm_count" {
  type = number
  description = "How many VMs"
  validation {
    condition = var.vm_count >= 1
    error_message = "You must have at least 1 VM"
  }
}

variable "vm_size" {
    type = string
    default = "Standard_F2"
}

variable "location" {
    type = string
    default = "West Europe"
    sensitive = true
}

variable "vnet_address" {
  type = string
  default = "10.0.0.0/16"
}