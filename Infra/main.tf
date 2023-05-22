provider "azurerm"{
    //version = ""=2.5.0""
    features{}
}

terraform {
  backend "azurerm" {
    resource_group_name  = "__ContainerRG__"
    storage_account_name = "__StorageAccountName__"
    container_name       = "__ContainerName__"
    key                  = "akscluster.tfstate"
  }
}

// locals {
//   rg_name     = var.env == "Red" ? "prod" : var.env == "Pink" ? "Dev" : var.env == "Pre-prod" ? "pre-prod" : upper(format("TX-%s", "demo-rg"))
//   location    = var.location
//   webapp_name = var.env == "Red" ? "prod" : var.env == "Pink" ? "Dev" : var.env == "Pre-prod" ? "pre-prod" : upper(format("TX-%s", "demo-rg"))
//   plan_name =  var.env == "Red" ? "prod" : var.env == "Pink" ? "Dev" : var.env == "Pre-prod" ? "pre-prod" : upper(format("TX-%s", "demo-rg"))

//}


// resource "azurerm_resource_group" "tx-demo" {
//   name     =  upper("TX-${local.rg_name}-demo-rg")
//   location = local.location
  
// }

// data "azurerm_subscriptions" "available" {
// }

// output "available_subscriptions" {
//   value = data.azurerm_subscriptions.available.subscriptions
// }

// output "first_available_subscription_display_name" {
//   value = data.azurerm_subscriptions.available.subscriptions[0].display_name
// }

// resource "azurerm_resource_group" "demo_rg" {
//   provider = azurerm.prod
//   name     = "${var.resource_group_name}"
//   location = "${var.location}"
// }

// resource "azurerm_resource_group" "demo_rg-2" {
//   provider = azurerm.dev
//   name     = "${var.resource_group_name}"
//   location = "${var.location}"
// }

module "kubernetes" {
  source                = "./modules/kubernetes"
 // client_id             = "${var.client_id}"
 // client_secret         = "${var.client_secret}"
 // ssh_public_key        = "${var.ssh_public_key}"
  resource_group_name   = "${var.resource_group_name}"
  location              = "${var.location}" 
}



// module "webapp" {
//   source = "./modules/webapp"
//   resource_group_name = "${var.resource_group_name}"
//   location            = "${var.location}"
//   app_service_plan_name = "${var.app_service_plan_name}"
//   app_service_name      = "${var.app_service_name}"
// }

// module "resource_group" {
//   source = "./modules/resource_group"
//   resource_group_name = "${var.resource_group_name}"
//   location = "${var.location}"
// }

// module "Vnet" {
//   source = "./modules/Vnet"
//    resource_group_name = module.resource_group.resource_groupName
//    location       = module.resource_group.location
// }

// module "vm" {
//     source                = "./modules/VM"
//     resource_group_name   = module.resource_group.resource_groupName
//     location              = module.resource_group.location
//     vm_name               = "${var.vm_name}"
//     vnet_network_interface_id = module.Vnet.network_interface_id
// }

// module "Scalable_Instance" {
//     source = "./modules/Scalable_Instance"
//     resource_group_name   = module.resource_group.resource_groupName
//     location              = module.resource_group.location
//     app_service_plan    = "TX-${var.app_service_plan}linux"
//     numb_webapp         =  "${var.numb_webapp}"
//     count               = "${var.numb_webapp}"
//     app_service_name    = "TX-${var.app_service_name}-${count.index+1}"
// }

// module "for-each-loop" {
//     source = "./modules/for-each-loop"
//     resource_group_name   = module.resource_group.resource_groupName
//     location              = module.resource_group.location
//     app_service_plan    = "TX-${var.app_service_plan}windows"
//     webapp_config     = "${var.webapp_config}"
// }

// module "condition-webapp" {
//     source = "./modules/condition-webapp"
//     resource_group_name       = azurerm_resource_group.tx-demo.name
//     webapp_location     = azurerm_resource_group.tx-demo.location
//     app_service_plan    = upper("TX-${local.plan_name}-linux")
//     webapp_name         = upper("TX-${local.webapp_name}-demo-webapp")
// }