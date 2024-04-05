module "azure_resourcegroup" {
  source   = "app.terraform.io/BluePi/azure_resourcegroup/azurerm"
  version  = "1.0.0"
  rgname   = rg-bluepi
  location = CentralIndia
}