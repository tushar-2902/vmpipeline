terraform {
  backend "azurerm" {
    resource_group_name   = "str-tushar-rg"
    storage_account_name  = "tusharstorage420"
    container_name        = "tushar-container"
    key                   = "tushar.tfstate"
  }
}


terraform {
  required_providers {
    azurerm = {
      source = "hashicorp/azurerm"
      version = "4.37.0"
    }
  }
}

provider "azurerm" {
  # Configuration options
  features {}
  subscription_id = "b02b567a-e4cb-4c73-975e-4664c82c8fc3"
}