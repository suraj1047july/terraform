#output "vnet_id" {
#    value = module.vnet.id
#    }          
output "resource_group_name" {
  value = azurerm_resource_group.rg.name
}
