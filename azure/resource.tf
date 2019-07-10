resource "azurerm_resource_group" "user04-terraformgroup" {
    name     = "user04-final-RG02"
    location = "koreasouth"
    tags = {
        environment = "Terraform user04-final"
    }
}
