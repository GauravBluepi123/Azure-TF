data "azurerm_location" "current" {
  location = "CentralIndia"
}
variable "rg_name" {
  type = string
}
variable "location" {
  type = string
}
