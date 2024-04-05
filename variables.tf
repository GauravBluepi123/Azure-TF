data "azurerm_location" "current" {
  location = "CentralIndia"
}
variable "rgname" {
  type = string
}
variable "location" {
  type = string
}
variable "ARM_CLIENT_ID" {
  type = string
}
variable "ARM_CLIENT_SECRET" {
  type = string
}
variable "ARM_SUBSCRIPTION_ID" {
  type = string
}
variable "ARM_TENANT_ID" {
  type = string
}
