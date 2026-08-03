output "vnet_ids" {
  value = {
    for k, v in module.Vnet :
    k => v.vnet_id
  }
}         
output "resource_group_id" {
  value = module.ResourceGroup.rg_id
}
output "route_table_ids" {
  description = "IDs of all Route Tables"

  value = {
    for key, rt in module.RouteTable :
    key => rt.id
  }
}
