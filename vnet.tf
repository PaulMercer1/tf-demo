module "myvnt1" {
  source = "./network"

  location = azurerm_resource_group.example.location
  resourcegroup_name = azurerm_resource_group.example.name
  vnet_cidr = var.vnet_address
}

module "myvnet3" {
  source  = "Azure/avm-res-network-virtualnetwork/azurerm"
  version = "0.7.1"

  location = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
  address_space = ["10.3.0.0/16"]
  name = "testing"
}