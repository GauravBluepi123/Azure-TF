terraform {
  cloud {
    organization = "BluePi"

    workspaces {
      name = env.Azure-TF
    }
  }
}

provider "azurerm" {
  features {}
  subscription_id = "f400423d-4718-4f96-9e32-4b3989422b16"
  client_id       = "iwg8Q~5SZe~hpj.BQRIPNRKZpxb6UdvC-qwSCc~r"
  client_secret   = "c393c9ec-63fd-4335-b26f-d14fe75ebda6"
  tenant_id       = "41ce6cb6-896d-4960-9d5b-54466d916c1c"
}
