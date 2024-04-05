terraform {
  cloud {
    organization = "BluePi"

    workspaces {
      name = "Bluepi-TF-Shared"
    }
  }
}

provider "azurerm" {
  features {}
}