###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###
### Output
###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###
output "resource_group_id" {
  description = "The id of the resource group created."
  value       = azurerm_resource_group.example.id
}
output "vnet" {
  description = "The vnet created."
  value       = azurerm_virtual_network.example
}
output "subnets" {
  description = "The subnets created."
  value       = azurerm_subnet.example[*]
}