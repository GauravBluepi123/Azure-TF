module "azure_rg" {
  source  = "app.terraform.io/BluePi/azure_rg/azurerm"
  version = "1.0.0"
  
  location = var.location
  rgname = var.rgname
}