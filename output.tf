#output "vnet_id" {
#    value = module.vnet.id
#    }          
output "resource_group" {
  value = azurerm_resource_group.rg_name.name
}
