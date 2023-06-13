terraform {
  backend "azurerm" {}
}

provider "azurerm" {
  features {}
}

module "acr" {
  source                 = "git::https://github.com/bradfordwagner/tf-m-az-acr.git?ref=0.2.0"
  name                   = var.name
  resource_group_name    = var.resource_group_name
  admin_enabled          = var.admin_enabled
  anonymous_pull_enabled = var.anonymous_pull_enabled
}

