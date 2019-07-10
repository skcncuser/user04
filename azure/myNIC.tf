resource "azurerm_network_interface" "myterraformnic" {
    name                = "user04NIC"
    location            = "koreasouth"
    resource_group_name = "${azurerm_resource_group.user04-terraformgroup.name}"
    network_security_group_id = "${azurerm_network_security_group.myterraformnsg.id}"

    ip_configuration {
        name                          = "user04NicConfiguration"
        subnet_id                     = "${azurerm_subnet.user04terraformsubnet.id}"
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id          = "${azurerm_public_ip.user04terraformpublicip.id}"
    }
    tags={
        environment = "User04-final-NIC"
    }
}
