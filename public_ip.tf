resource "azurerm_public_ip" "public_ip" {
    name    = "pip-devops-vm"
    location = azurerm_resource_group.rg.location
    resource_group_name = azurerm_resource_group.rg.name
    allocation_method = "Dynamic"
    sku = "Basic"
 
}