terraform {
  cloud {
    organization = "BluePi"

    workspaces {
      name = "Azure-TF"
    }
  }
}

provider "azurerm" {
  features {}
}
