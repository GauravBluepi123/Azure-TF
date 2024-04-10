locals {
  months = ["January", "February", "March", "April", "May", "June", "July", "August", "September", "October", "November", "December"]
}

resource "azurerm_consumption_budget" "monthly_budgets" {
  for_each = { for idx, month in local.months : idx => month }

  # Budget for the current year
  name           = "monthly-budget-${each.value}-${var.current_year}"
  amount         = var.budget_amount
  time_grain     = "Monthly"
  time_period_end = timestamp(date(var.current_year, idx + 1, 1))

  category {
    amount = var.budget_amount
    category_type = "Cost"
  }

  notifications {
    enabled         = true
    contact_emails  = ["gauravkumar.pandey@bluepi.in"]
    contact_roles   = ["Owner"]
    threshold       = 80
    operator        = "GreaterThan"
    notification_key = "monthly-budget-${each.value}-${var.current_year}-80-percent-spent"
  }

  # Budget for the upcoming year
  name           = "monthly-budget-${each.value}-${var.current_year + 1}"
  amount         = var.budget_amount
  time_grain     = "Monthly"
  time_period_end = timestamp(date(var.current_year + 1, idx + 1, 1))

  category {
    amount = var.budget_amount
    category_type = "Cost"
  }

  notifications {
    enabled         = true
    contact_emails  = ["gauravkumar.pandey@bluepi.in"]
    contact_roles   = ["Owner"]
    threshold       = 80
    operator        = "GreaterThan"
    notification_key = "monthly-budget-${each.value}-${var.current_year + 1}-80-percent-spent"
  }
}
