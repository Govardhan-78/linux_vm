resource "azurerm_network_interface" "nic" {
    name =    "nic-devops-vm"
    location = azurerm_resource_group.rg.location
    resource_group_name  = azurerm_resource.rg.name


   ip_configuration {
        name = "internal"
        subnet_id =    azurerm_subnet.subnet.id
        private_ip_address_allocation = "Dynamic"
        public_ip_address_id = azurerm_public_ip.public.id
   

   }
}

resource "azurerm_network_interface_security_group_association" "nsg_assoc" {
    network_interface_id = azurerm_network_interface.nic.id
    network_security_group_id = azurerm_network_security_group.nsg.id

}
   