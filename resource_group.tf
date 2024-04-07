provider "azurerm" {
  features {}
  subscription_id = "f400423d-4718-4f96-9e32-4b3989422b16"
  client_id       = "d5a511b9-e410-4ba3-91f1-c454ae29aea1"
  client_secret   = "iwg8Q~5SZe~hpj.BQRIPNRKZpxb6UdvC-qwSCc~r"
  tenant_id       = "41ce6cb6-896d-4960-9d5b-54466d916c1c"
}

module "resource-group" {
  source  = "app.terraform.io/BluePi/resource-group/azurerm"
  version = "1.0.0"
}
