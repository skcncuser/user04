resource "azurerm_network_security_group" "myterraformnsg" {
    name                = "user04NetworkSecurityGroup"
    location            = "koreasouth"
    resource_group_name = "${azurerm_resource_group.user04-terraformgroup.name}"
    security_rule {
        name                       = "SSH"
        priority                   = 1001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "22"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

     security_rule {
        name                       = "HTTP"
        priority                   = 2001
        direction                  = "Inbound"
        access                     = "Allow"
        protocol                   = "Tcp"
        source_port_range          = "*"
        destination_port_range     = "80"
        source_address_prefix      = "*"
        destination_address_prefix = "*"
    }

    tags={
        environment = "User04-final-SecurityGroup"
    }
}
