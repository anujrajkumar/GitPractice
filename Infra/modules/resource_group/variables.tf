variable resource_group_name {
  default = "demo-vm"
}

variable "location" {
  default = "Central India"
}

variable "tags" {
  type = map(string)
  default = {
     Environment = "DevOps"
     Dept        = "Azure"
  }
}