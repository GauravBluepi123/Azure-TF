module "azure_sa" {
  source  = "app.terraform.io/BluePi/azure_sa/azurerm"
  version = "1.0.4"
  
  location     = data.azurerm_location.current.display_name
  rgname       = module.azure_rg.rgname
  sa_name      = "mysa2024"
}