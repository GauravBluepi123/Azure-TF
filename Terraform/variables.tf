data "azurerm_location" "current" {
  location = "CentralIndia"
}
variable "rgname" {
  type = string
}
variable "location" {
  type = string
}
variable "subnet_ip" {
    type = number
}
variable "virtual_network_ip" {
    type = number
}