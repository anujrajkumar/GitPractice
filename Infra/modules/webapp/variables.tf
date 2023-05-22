variable "resource_group_name" {
  description = "Resource group name"
}

variable "location" {
  description = "Location of Azure reource"
  default     = "centralindia"
}

variable "app_service_plan_name" {
    description= "App service plan name"
}

variable "app_service_name" {
    description= "App service name"
}