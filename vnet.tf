module "myvnt1" {
  source = "./network"

  location = azurerm_resource_group.example.location
  resourcegroup_name = azurerm_resource_group.example.name
  vnet_cidr = var.vnet_address
}

module "myvnt2" {
  source = "./network"
  
  location = azurerm_resource_group.example.location
  resourcegroup_name = azurerm_resource_group.example.name
  vnet_cidr = "10.2.0.0/16"
  vnet_name = "secondvnet"
}