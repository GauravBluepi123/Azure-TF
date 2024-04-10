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

