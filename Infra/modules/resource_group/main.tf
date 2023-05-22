resource "azurerm_resource_group" "demo_rg" {
  name     = "TX-${var.resource_group_name}"
  location = "${var.location}"
  tags = "${var.tags}"
}

output "resource_groupName" {
    value = azurerm_resource_group.demo_rg.name
}

output "location" {
    value = azurerm_resource_group.demo_rg.location
}