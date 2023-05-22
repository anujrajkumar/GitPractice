resource "azurerm_app_service_plan" "webapp" {
  name                = "TX-${var.app_service_plan}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  kind                = "Linux"
  reserved            =  true

  sku {
    tier = "Standard"
    size = "S1"
   
  }
}
resource "azurerm_app_service" "webapp" {
  for_each            = "${var.webapp_config}"
  name                = each.value["name"]
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  app_service_plan_id = azurerm_app_service_plan.webapp.id

  site_config{
     linux_fx_version = each.value["framework_name"]

  }
}