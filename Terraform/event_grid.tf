resource "azurerm_storage_queue" "example" {
  name                 = "examplestoragequeue"
  storage_account_name = module.azure_sa.sa_name
}

resource "azurerm_eventgrid_system_topic" "example" {
  name                   = "example-system-topic"
  location               = "Global"
  resource_group_name    = module.azure_rg.rgname
  source_arm_resource_id = module.azure_rg.rgname_id
  topic_type             = "Microsoft.Resources.ResourceGroups"
}

resource "azurerm_eventgrid_system_topic_event_subscription" "example" {
  name                = "example-event-subscription"
  system_topic        = azurerm_eventgrid_system_topic.example.name
  resource_group_name = module.azure_rg.rgname
  event_delivery_schema  = "EventGridSchema"
  included_event_types    = ["BlobCreated"]

  storage_queue_endpoint {
    storage_account_id = module.azure_sa.sa_id
    queue_name         = azurerm_storage_queue.example.name
  }
}