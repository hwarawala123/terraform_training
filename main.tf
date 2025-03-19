resource "azurerm_resource_group" "rg21" {
  name     = var.rg_name
  location = var.location
  tags = {
    Enivironment = "Dev"
  }
}

resource "azurerm_virtual_network" "vnet1" {
  name = var.vnet_n
  location = azurerm_resource_group.rg21.location
  address_space = ["90.90.90.0/24"]
  resource_group_name = azurerm_resource_group.rg21.name
}

resource "azurerm_virtual_network" "vnet2" {
  name = var.vnet_n2
  location = azurerm_resource_group.rg21.location
  address_space = ["70.70.70.0/24"]
  resource_group_name = azurerm_resource_group.rg21.name
}

