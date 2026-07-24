module "ResourceGroup" {
  source  = "app.terraform.io/terraform_learn_all_cloud/ResourceGroup/azurerm"
  version = "1.0.0"
  name = var.rg_name
  location = var.location
}
module "Vnet" {
  source  = "app.terraform.io/terraform_learn_all_cloud/Vnet/azurerm"
  version = "1.0.0"
  for_each = var.vnets
  name           = each.value.name
  location       = each.value.location
  resource_group = module.ResourceGroup.rg_id
  address_space  = each.value.address_space
}



