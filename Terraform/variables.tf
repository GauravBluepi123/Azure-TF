data "azurerm_location" "current" {
  location = "CentralIndia"
}
variable "rgname" {
  type = string
}

variable "cpu_thresholds" {
  default = [80, 90]
}

