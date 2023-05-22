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
variable "webapp_config"{
    description = "WebApp Name"
    type = any

}