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
  version = "1.0.8"
  for_each = var.subnets
  subnet_name      = each.value.name
  resource_group   = module.ResourceGroup.rg_name
  vnet             = module.Vnet[each.value.vnet].vnet_name
  address_prefixes = each.value.address_prefixes
}
module "RouteTableAssociation" {
  source  = "app.terraform.io/terraform_learn_all_cloud/RouteTableAssociation/azurerm"
  version = "1.0.8"
 for_each = {
    for k, v in var.subnets :
    k => v if v.route_table != null
  }

  subnet_id      = module.Subnet[each.key].id
  route_table_id = module.RouteTable[each.value.route_table].id
}

module "NSG" {
  source  = "app.terraform.io/terraform_learn_all_cloud/NSG/azzurerm"
  version = "1.1.2"
  for_each = var.NSGs

  NSG_Name = each.value.name
  resource_group   = module.ResourceGroup.rg_name
  location         = module.ResourceGroup.location  

  rule_name = each.value.rule_name
  priority  = each.value.priority
  direction = each.value.direction
  access    = each.value.access
  protocol  = each.value.protocol
  source_port_range      = each.value.source_port_range
  destination_port_range = each.value.destination_port_range
  source_address_prefix  = each.value.source_address_prefix
  destination_address_prefix = each.value.destination_address_prefix
 }
module "NSGAssociation" {
  source  = "app.terraform.io/terraform_learn_all_cloud/NSGAssociation/azurerm"
  version = "1.1.2"
  for_each = {
    for k, v in var.subnets :
    k => v if v.nsg != null
  }
  subnet_id = module.Subnet[each.key].id
  network_security_group_id    = module.NSG[each.value.nsg].id
}





