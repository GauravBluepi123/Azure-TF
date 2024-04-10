module "azure_ag" {
  source  = "app.terraform.io/BluePi/azure_ag/azurerm"
  version = "1.0.2"
  
  action_group_name = "ActionDemo"
  ag_short_name = "action"
  location = data.azurerm_location.current.display_name
  rgname = module.azure_rg.rgname
  user_mail_id = "gauravkumar.pandey@bluepi.in"
}