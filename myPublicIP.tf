resource "azurerm_public_ip" "user04terraformpublicip" {
    name                         = "user04PublicIP" # myPublicIP
    location                     = "koreasouth"
    resource_group_name          = "${azurerm_resource_group.user04-terraformgroup.name}"
    allocation_method            = "Dynamic"
    tags = {
        environment = "User04-final-PublicIP"
    }
}
