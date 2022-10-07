terraform {
  required_providers {
    azurerm = {
      version = "= 2.83.0"
    }
  }
  backend "azurerm" {
  resource_group_name = "NetworkWatcherRG" ##"lz-data-${lower(var.environment)}-uks-rg-01"
  storage_account_name = "${lower(var.environment)}terrastate919"
  container_name = "tfstate-syn2"
  key = "terraform.tfstate"
}
}


provider "azurerm" {
  features {}
}

data "azurerm_client_config" "current" {}

data "http" "ip" {
  url = "https://ifconfig.me"
}