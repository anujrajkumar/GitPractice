
resource "azurerm_app_service_plan" "serviceplan" {
    name = "${var.app_service_plan_name}"
    location = "${var.location}"
    resource_group_name = "${var.resource_group_name}"

   kind = "Linux"
   reserved= true

   sku {
       # name= "P1v2"
        tier= "PremiumV2"
        size= "P1v2"
    }

 }

resource "azurerm_app_service" "appservice"{
    name = "${var.app_service_name}"
    location = "${var.location}"
    resource_group_name = "${var.resource_group_name}"
    app_service_plan_id = "${azurerm_app_service_plan.serviceplan.id}"
     https_only          = true

       site_config {
    linux_fx_version = "DOCKER|anuj730/jpipeline_demo:react-app"
    use_32_bit_worker_process = true
  }
}