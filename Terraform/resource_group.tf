module "azure_rg" {
  source  = "app.terraform.io/BluePi/azure_rg/azurerm"
  version = "1.0.7"
  
  location = data.azurerm_location.current.display_name
  rgname = var.rgname
}