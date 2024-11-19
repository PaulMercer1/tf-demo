resource "azurerm_virtual_network" "example" {
  name                = "example-network"
  address_space       = [var.vnet_address]
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name

    tags = local.mytags
}

resource "azurerm_subnet" "example" {
  name                 = "internal"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = [cidrsubnet(var.vnet_address,8, 1)]
}

resource "azurerm_subnet" "example2" {
  name                 = "internal2"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = [cidrsubnet(var.vnet_address,8, 2)]
}
