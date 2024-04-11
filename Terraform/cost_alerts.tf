locals {
  months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
}

resource "azurerm_consumption_budget_resource_group" "monthly_budgets" {
  for_each = { for idx, month in local.months : idx => month }

  name           = "monthly-budget-${each.value}-${var.year}"
  amount         = var.budget_amount
  time_grain     = "Monthly"
  time_period_end = timestamp(date(var.year, idx + 1, 1))

  category {
    amount = var.budget_amount
    category_type = "Cost"
  }

  notifications {
    enabled         = true
    contact_emails  = ["user@example.com"]
    contact_roles   = ["Owner"]
    threshold       = 80
    operator        = "GreaterThan"
    notification_key = "monthly-budget-${each.value}-${var.year}-80-percent-spent"
  }
}
