terraform {
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

module "acr" {
  source              = "git::https://github.com/bradfordwagner/tf-m-az-acr.git?ref=0.1.0"
  name                = var.name
  resource_group_name = var.resource_group_name
  admin_enabled       = var.admin_enabled
}

