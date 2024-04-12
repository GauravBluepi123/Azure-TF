module "azure_sa" {
  source  = "app.terraform.io/BluePi/azure_sa/azurerm"
  version = "1.0.2"
  
  location     = module.azure_rg.location
  rgname       = module.azure_rg.rgname
  sa_name_name = "my_sa"
}