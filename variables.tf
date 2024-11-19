variable "vm_count" {
  type = number
  description = "How many VMs"
  validation {
    condition = var.vm_count >= 1
    error_message = "You must have at least 1 VM"
  }
}

# $vm_size
variable "vm_size" {
  type = string
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