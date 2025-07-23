data "azurerm_subnet" "dsb" {
  name                 = var.sb-name
  virtual_network_name = var.vn-name
  resource_group_name  = var.rg-name
}

data "azurerm_public_ip" "dpip" {
  name                = var.pip-name
  resource_group_name = var.rg-name
}


