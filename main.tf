terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "=3.0.0"
    }
  }
}
provider "azurerm" {
    features {}
}
module "my_rg" {
  source = "git::https://github.com/KPMG-UK/terraform-az-resource-group.git?ref=tf0.14-1.0.0"

  name        = "new-my-rg"
  location    = "UK South"
  environment = "PROD"
}
