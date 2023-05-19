terraform {
  backend "azurerm" {}
}

module "hello_world" {
  source = "git::https://github.com/bradfordwagner/gh-template-tf-module.git?ref=1.0.0"
  input  = var.input
}

output "name" {
  value = module.hello_world.hello_world
}

