
resource "azurerm_app_service_plan" "tx-app_service_plan" {
  
  name                = "Tx-${var.app_service_plan}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  kind                = "Linux"
  reserved            =  true

  sku {
    tier = "Standard"
    size = "S1"
   
  }
}
resource "azurerm_app_service" "tx-app_service" {
  count               = var.numb_webapp
  name                = "${var.app_service_name}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  app_service_plan_id = azurerm_app_service_plan.tx-app_service_plan.id

  site_config{
     linux_fx_version = "DOTNETCORE|3.1"

  }

  app_settings = "${var.app_settings}"
}

output "app_service_name" {
    value = azurerm_app_service.tx-app_service[*].name
  
}