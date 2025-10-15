output "vm_public_ip" {
  description = "Public IP address of the Linux VM"
  value       = azurerm_public_ip.publicip.ip_address
}

output "admin_username" {
  description = "Admin username for the VM"
  value       = var.vm_admin_username
}

output "resource_group" {
  description = "Resource group name"
  value       = azurerm_resource_group.rg.name
}
