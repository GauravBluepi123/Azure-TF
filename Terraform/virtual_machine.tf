module "azure_vm" {
  source  = "app.terraform.io/BluePi/azure_vm/azurerm"
  version = "1.0.2"
  
  ip-addrs_virtual_network = var.virtual_network_ip
  location = data.azurerm_location.current.display_name
  network_interface_ip_configuration = "my-ip-config"
  network_interface_name = "my-network-interface"
  os_disk_name = "my-os-disk"
  public_ip_name = "my-public-ip"
  rgname = var.rgname
  subnet_ip_prefix = var.subnet_ip
  subnet_name = "my-subnet"
  virtual_network_name = "my-virtual-network"
  vm_name = "my_vm"
  vm_size = "Standard_DS1_v2"
}