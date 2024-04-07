module "resource-group" {
  source  = "app.terraform.io/BluePi/resource-group/azurerm"
  version = "1.0.0"

  rgname   = var.rgname
  location = var.location
}
