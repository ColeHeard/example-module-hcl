###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###
### Resources
###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###>-<###
resource "azurerm_resource_group" "example" {
  name     = var.resource_group_name
  location = var.region
}
resource "azurerm_virtual_network" "example" {
  name                = var.network_name
  address_space       = var.cidr
  location            = azurerm_resource_group.example.location
  resource_group_name = azurerm_resource_group.example.name
}
resource "azurerm_subnet" "example" {
  count                = var.subnet_count
  name                 = "${var.network_name}-subnet-${format("%02d", count.index)}"
  resource_group_name  = azurerm_resource_group.example.name
  virtual_network_name = azurerm_virtual_network.example.name
  address_prefixes     = cidrsubnets("${var.cidr}, 8, ${count.index}")

  dynamic "delegation" {

    for_each = var.service_delegation_name
    content {
      name = "delegation"
      service_delegation {
        name    = var.service_delegation_name[each.value]
        actions = var.service_delegation_action
      }
    }
  }
}