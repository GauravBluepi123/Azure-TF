data "azurerm_location" "current" {
  location = "CentralIndia"
}
variable "rgname" {
  type = string
  default = "rg-bluepi"
}
variable "location" {
  type = string
  default = "CentralIndia"
}


