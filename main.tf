resource "azurerm_resource_group" "rg21" {
  name     = var.rg_name
  location = var.location
}

resource "azurerm_virtual_network" "vnet1" {
  name = var.vnet_n
  location = azurerm_resource_group.rg21.location
  address_space = ["90.90.90.0/24"]
  resource_group_name = azurerm_resource_group.rg21.name
}