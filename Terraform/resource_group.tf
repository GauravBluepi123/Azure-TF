module "azure_rg" {
  source  = "app.terraform.io/BluePi/azure_rg/azurerm"
  version = "1.0.3"
  
  location = var.location
  rgname = var.rg_name
}