resource "azurerm_consumption_budget_resource_group" "this" {
  name              = "cost_alert"
  resource_group_id = module.azure_rg.rgname_id

  amount     = 1000
  time_grain = "Monthly"

  time_period {
    start_date = "2024-04-01T00:00:00Z"
    end_date   = "2030-12-01T00:00:00Z"
  }

  filter {
    dimension {
      name = "ResourceId"
      values = [
        module.azure_ag.action_group_id,
      ]
    }
  }

  notification {
    enabled        = true
    threshold      = 90.0
    operator       = "GreaterThan"
    threshold_type = "Actual"

    contact_emails = [
      "gauravkumar.pandey@bluepi.in",
    ]

    contact_groups = [
      module.azure_ag.action_group_id,
    ]

    contact_roles = [
      "Owner",
    ]
  }

  notification {
    enabled        = true
    threshold      = 75.0
    operator       = "GreaterThan"
    threshold_type = "Actual"

    contact_emails = [
      "gauravkumar.pandey@bluepi.in",
    ]
    
    contact_groups = [
      module.azure_ag.action_group_id,
    ]

    contact_roles = [
      "Owner",
    ]
  }

  notification {
    enabled        = true
    threshold      = 50.0
    operator       = "GreaterThan"
    threshold_type = "Actual"

    contact_groups = [
      module.azure_ag.action_group_id,
    ]

    contact_emails = [
      "gauravkumar.pandey@bluepi.in",
    ]

    contact_roles = [
      "Owner",
    ]
  }

  notification {
    enabled        = true
    threshold      = 90.0
    operator       = "GreaterThan"
    threshold_type = "Forecasted"

    contact_groups = [
      module.azure_ag.action_group_id,
    ]

    contact_emails = [
      "gauravkumar.pandey@bluepi.in",
    ]

    contact_roles = [
      "Owner",
    ]
  }
}