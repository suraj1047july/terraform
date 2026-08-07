module "ResourceGroup" {
  source  = "app.terraform.io/terraform_learn_all_cloud/ResourceGroup/azurerm"
  version = "1.0.3"
  name = var.rg_name
  location = var.location
}
module "Vnet" {
  source  = "app.terraform.io/terraform_learn_all_cloud/Vnet/azurerm"
  version = "1.0.3"
  for_each = var.vnets
  name           = each.value.name
  location       = module.ResourceGroup.location
  resource_group_name = module.ResourceGroup.rg_name
  address_space  = each.value.address_space
} 
module "RouteTable" {
  source  = "app.terraform.io/terraform_learn_all_cloud/RouteTable/azurerm"
  version = "1.0.4"

  for_each = var.route_tables

  route_table_name = each.value.name
  resource_group   = module.ResourceGroup.rg_name
  location         = module.ResourceGroup.location

  route_name     = each.value.route_name
  address_prefix = each.value.address_prefix
  next_hop_type  = each.value.next_hop_type
}
module "Subnet" {
  source  = "app.terraform.io/terraform_learn_all_cloud/Subnet/azurerm"
  version = "1.0.5"
  for_each = var.subnets
  subnet_name      = each.value.name
  resource_group   = module.ResourceGroup.rg_name
  vnet             = module.Vnet[each.value.vnet].name
  subnet_address_space = each.value.address_prefixes}





