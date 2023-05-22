// // variable "client_id" {

// // }
// // variable "client_secret" {

// // }

variable resource_group_name {
  default = "Team_Azure"
}

// variable "vm_name"{
//     description = "VM Name"
//     default = "demo-vm"


// }
// variable "vnet_network_interface_id" {
//     type = string
//     description = "Network interface name"
// }

// variable "ssh_public_key" {

// }

// variable "agent_count" {
//    default = 1
// }

// variable "dns_prefix" {
//    default = "k8s"
// }

// variable cluster_name {
//   default = "k8scluster"
// }


variable location {
  default = "Central India"
}

// variable "webapp_name"{
//     description = "WebApp Name"

// }
// variable "app_service_plan_name" {
//     description= "App service plan name"
// }

// variable "app_service_name" {
//     description= "App service name"
// }

// variable "app_service_plan"{
//    description = "App service Plan name" 
//    default = "demo-app-service-plan-ak"
// }
// variable "app_service_name"{
//     description = "WebApp Name"
//     default = "demo-app-service-ak"
// }

//  variable "numb_webapp" {
//   description = "Number of App Service to create"
//   default = 3
// }

// variable "webapp_config" {
//     description = "Webapp site config"
//     type = any
//     default = { 
//       webapp1 = {
//         "name"            = "TX-dotnet-webapp"
//         "framework_name"  = "DOTNETCORE|3.1"
//         },
//     webapp2 = {
//         "name"           = "TX-docker-webapp"
//         "framework_name" = "anuj730/jpipeline_demo:react-app"
//         }
//     }
// }

variable "env" {
  description = "Environment Selection"
  default = "__environment__"
  
}