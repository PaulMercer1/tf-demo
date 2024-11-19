output "vm2_ip" {
    value = azurerm_network_interface.example2.private_ip_addresses
}