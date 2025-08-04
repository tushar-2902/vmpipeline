resource "azurerm_subnet" "sb" {
  name                 = var.sb-name
  resource_group_name  = var.rg-name
  virtual_network_name = var.vn-name
  address_prefixes     = ["10.0.1.0/24"]

}
