
resource "azurerm_kubernetes_cluster" "k8s" {
  name                = "${var.cluster_name}"
  location            = "${var.location}"
  resource_group_name = "${var.resource_group_name}"
  dns_prefix          = "${var.dns_prefix}"


  default_node_pool {
    name            = "default"
    node_count      = "${var.agent_count}"
    vm_size         = "Standard_E4s_v3"
  }

  // linux_profile {
  //   admin_username = "ubuntu"

  //   ssh_key {
  //     key_data = "${var.ssh_public_key}"
  //   }
  // }
  // service_principal {
  //   client_id     = "${var.client_id}"
  //   client_secret = "${var.client_secret}"
  // }

   identity {
    type = "SystemAssigned"
  }

   network_profile {
    load_balancer_sku = "Standard"
    network_plugin    = "kubenet" # CNI
  }

}