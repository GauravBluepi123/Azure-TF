module "prism" {
  source  = "app.terraform.io/InterGlobeAviation-Indigo/azure_resourcegroup/azurerm"
  version = "1.0.0"

  rgname      = "RG-${var.DEPARTMENT}-${var.PROJECT}-${var.ENV}"

}