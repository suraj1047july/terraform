// module "ResourceGroup" {
//   source  = "app.terraform.io/terraform_learn_all_cloud/ResourceGroup/azurerm"
//   version = "1.0.2"
//   name = var.rg_name
//   location = var.location
// }
// module "Vnet" {
//   source  = "app.terraform.io/terraform_learn_all_cloud/Vnet/azurerm"
//   version = "1.0.2"
//   for_each = var.vnets
//   name           = each.value.name
//   location       = module.ResourceGroup.location
//   resource_group_name = module.ResourceGroup.rg_name
//   address_space  = each.value.address_space
// } 



