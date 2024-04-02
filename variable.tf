data "azurerm_location" "current" {
  location = "CentralIndia"
}
variable "rg-name" {
  description = "resource group name"
  type        = string
}
variable "location" {
  description = "Location description"
  type        = string
}
