terraform {
  cloud {
    organization = "InterGlobeAviation-Indigo"

    workspaces {
      name = env.TF_WORKSPACE
    }
  }
}

provider "azurerm" {
  features {}
}