terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.10.0"
    }
  }
}

resource "azurerm_virtual_network" "example" {
  name                = var.vnet_name
  address_space       = [var.vnet_cidr]
  location            = var.location
  resource_group_name = var.resourcegroup_name
}

resource "azurerm_subnet" "example" {
  name                 = "internal"
  resource_group_name  = var.resourcegroup_name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = [cidrsubnet(var.vnet_cidr,8, 1)]
}

resource "azurerm_subnet" "example2" {
  name                 = "internal2"
  resource_group_name  = var.resourcegroup_name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = [cidrsubnet(var.vnet_cidr,8, 2)]
}
