variable "location" {
        type =  string
        default = "East US"

}
variable "resource_group_name" {
        type =  string
        default = "rg-azuredevops-practice"

}
variable "vnet_name" {
    type = string
    default = "vnet-devops-practice"
 
}
variable "subnet_name" {
    type = string
    default = "snet-devops"
  
}
variable "vm_admin_username" {
    type = string
    default = "azuredev"
  
}
variable "ssh_public_key_path" {
    type = string
    default = "~/.ssh/id_rsa.pub"
  
}
variable "vm_size" {
    type = string
    default = "Stanadard_B2ms"
  
}
variable "vm_name" {
    type  = string
    default = "devops-vm-01"
}
variable "os_disk_size_gb" {
    type = string
    default = "64"
  
}