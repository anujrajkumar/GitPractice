variable "resource_group_name" {
  description = "Resource group name"
 
}

variable "location" {
  description = "Location of Azure reource"
  default     = "centralindia"
}

variable "vm_name"{
    description = "VM Name"
    default = "demo-vm"


}
variable "vnet_network_interface_id" {
    type = string
    description = "Network interface name"
}