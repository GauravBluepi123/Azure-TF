data "azurerm_location" "current" {
  location = "CentralIndia"
}
variable "rgname" {
  type = string
}
variable "location" {
  type = string
}

