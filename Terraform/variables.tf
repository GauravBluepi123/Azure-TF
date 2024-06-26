data "azurerm_location" "current" {
  location = "CentralIndia"
}
variable "rgname" {
  type = string
}
variable "cpu_thresholds" {
  type    = list(number)
  default = [80, 90]
}
variable "budget_amount" {
  description = "Monthly budget amount"
  default     = 100.0
}

variable "year" {
  description = "Current year"
  default     = 2024
}

