variable "resource_group_name" {
  description = "Resource group name"
 
}

variable "location" {
  description = "Location of Azure reource"
  default     = "centralindia"
}

variable "app_service_plan"{
   description = "App service Plan name" 
}
variable "app_service_name"{
    description = "WebApp Name"
}

 variable "numb_webapp" {
  description = "Number of App Service to create"
}

variable "app_settings" {
type = map(string)
description = "App settings of the App Service"
default = {
  KEY1 = "VAL1"
}
}