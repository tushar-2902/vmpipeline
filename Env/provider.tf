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
  subscription_id = "b397c2d0-369a-47dd-9100-9467b7447185"
}