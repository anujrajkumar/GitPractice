variable "resource_group_name" {
  description = "Resource group name"
 
}

variable "webapp_location" {
  description = "Location of Azure reource"
  default     = "centralindia"
}

variable "app_service_plan"{
   description = "App service Plan name" 
}
variable "webapp_name"{
    description = "WebApp Name"
}