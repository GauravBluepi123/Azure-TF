data "azurerm_virtual_machine" "this" {
  name = module.azure_vm.vmname
  resource_group_name = module.azure_rg.rgname
}

resource "azurerm_monitor_metric_alert" "this" {
  for_each = { for idx, threshold in var.cpu_thresholds : idx => threshold }

  name                 = "vm-cpu-usage-alert-${each.value}"
  resource_group_name  = module.azure_rg.rgname
  scopes               = [data.azurerm_virtual_machine.this.id]
  severity             = "3"
  criteria {
    metric_namespace = "microsoft.compute/virtualmachines"
    metric_name      = "Percentage CPU"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = each.value
  }

  action {
    action_group_id = module.azure_ag.action_group_id
  }

  description = each.value == 90 ? "Alert triggered when VM CPU usage exceeds 90%" : "Alert triggered when VM CPU usage exceeds 80%"
  window_size = "PT5M"
}

resource "azurerm_monitor_metric_alert" "memory_alert" {
  for_each = { for idx, threshold in var.cpu_thresholds : idx => threshold }

  name                 = "vm-memory-usage-alert-${each.value}"
  resource_group_name = module.azure_rg.rgname
  scopes              = [data.azurerm_virtual_machine.this.id]

  criteria {
    metric_namespace = "microsoft.compute/virtualmachines"
    metric_name      = "Available Memory Bytes"
    aggregation      = "Average"
    operator         = "GreaterThan"
    threshold        = each.value
  }

  action {
    action_group_id = module.azure_ag.action_group_id
  }

  description = each.value == 90 ? "Alert triggered when VM Memory usage exceeds 90%" : "Alert triggered when VM CPU usage exceeds 80%"
  window_size = "PT5M"
}
