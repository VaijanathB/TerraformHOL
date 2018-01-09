resource "azurerm_resource_group" "rg" {
  name     = "${var.resource_group}"
  location = "${var.location}"
}

resource "azurerm_virtual_network" "vnet" {
  name                = "${var.resource_group}vnet"
  location            = "${azurerm_resource_group.rg.location}"
  address_space       = ["10.0.0.0/16"]
  resource_group_name = "${azurerm_resource_group.rg.name}"
}


# resource "azurerm_subnet" "subnet" {
#   name                 = "subnet"
#   address_prefix       = "10.0.0.0/24"
#   resource_group_name  = "${azurerm_resource_group.rg.name}"
#   virtual_network_name = "${azurerm_virtual_network.vnet.name}"
# }

resource "azurerm_public_ip" "pip" {
  name                         = "${var.hostname}-pip"
  location                     = "${azurerm_resource_group.rg.location}"
  resource_group_name          = "${azurerm_resource_group.rg.name}"
  public_ip_address_allocation = "Dynamic"
  domain_name_label            = "${var.hostname}"
}
