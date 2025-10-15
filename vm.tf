resource "azurerm_linuxvirtual_machine" "vm" {
    name = var.vm_name
    resource_group_name = azurerm_resource_group.rg.name
    location = azurerm_resource_group.rg.location
    size = var.vm_size
    admin_username = var.vm_admin_username
    nwtwork_interface-ids = [azurerm_network_interface.nic.id]

    admin_ssh_key {
        username = var.vm_admin_username
        public_key = file(var.ssh_public_key_path)
       
    }

    os_disk {
        name =  "${var.vm_name}-osdisk"
        caching = "ReadWrite"
        storage_account_type = "Standard_LRS"
    }
}