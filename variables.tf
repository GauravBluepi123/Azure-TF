data "azurerm_location" "current" {
  location = "CentralIndia"
}
variable "ENV" {
  description = "Environment Name"
  type        = string
}
