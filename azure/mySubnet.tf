resource "azurerm_subnet" "user04terraformsubnet" {
    name                 = "user04Subnet1"
    resource_group_name  = "${azurerm_resource_group.user04-terraformgroup.name}"
    virtual_network_name = "${azurerm_virtual_network.myterraformnetwork.name}"
    address_prefix       = "4.0.1.0/24"
}
