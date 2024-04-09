terraform {
  cloud {
    organization = "BluePi"
    workspaces {
      name = "Infra"
    }
  }
}
provider "azurerm" {
  features {}
}