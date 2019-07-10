resource "azurerm_virtual_network" "myterraformnetwork" {
    name                = "myVnet"
    address_space       = ["4.0.0.0/16"]
    location            = "koreasouth"
    resource_group_name = "${azurerm_resource_group.user04-terraformgroup.name}"
    tags= {
        environment = "User04-final-Vnet"
    }
}
