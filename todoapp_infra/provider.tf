terraform {
  required_providers {
    azurerm = {
      source  = "hashicorp/azurerm"
      version = "4.10.0"
    }
  }
  backend "azurerm" {
    resource_group_name  = "testrg"
    storage_account_name = "devopsstg14325"
    container_name       = "tfstate"
    key                  = "dev.terraform.tfstate"
  }
}

provider "azurerm" {
  subscription_id = "89a1b37c-85de-43fd-972b-3ad629ca01a1"
  features {}
}
