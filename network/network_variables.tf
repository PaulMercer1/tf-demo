variable "vnet_cidr" {
    type = string
}

variable "location" {
    type = string
}

variable "resourcegroup_name"{
    type = string
}

variable "vnet_name" {
  type = string
  default = "demovnet"
}