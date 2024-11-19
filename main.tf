terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.10.0"
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "969d52e6-0b2c-47eb-ba03-5353ab102da7"
}

resource "azurerm_resource_group" "example" {
  name     = "example-tf2"
  location = var.location
}
