
resource "azurerm_app_service_plan" "tx-linux" {
  
  name                = var.app_service_plan
  location            = var.webapp_location
  resource_group_name = var.resource_group_name
  kind                = "Linux"
  reserved            =  true

  sku {
    tier = "Standard"
    size = "S1"
   
  }
}
# resource "azurerm_application_insights" "appisight" {
#   name                = "TX-demo-appinsight"
#   location            = var.webapp_location
#   resource_group_name = var.resource_name
#   application_type    = "web"
# }

resource "azurerm_app_service" "tx-linux-app" {
  name                = var.webapp_name
  location            = var.webapp_location
  resource_group_name = var.resource_group_name
  app_service_plan_id = azurerm_app_service_plan.tx-linux.id

  # app_settings = {
  #    APPINSIGHTS_INSTRUMENTATIONKEY                  = "${azurerm_application_insights.appisight.instrumentation_key}"
  #    APPLICATIONINSIGHTS_CONNECTION_STRING           = "${azurerm_application_insights.app_insight.connection_string}"

  # }
  site_config{
     linux_fx_version = "DOTNETCORE|3.1"

  }
}