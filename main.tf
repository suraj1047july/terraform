module "ResourceGroup" {
  source  = "app.terraform.io/terraform_learn_all_cloud/ResourceGroup/azurerm"
  version = "1.0.3"
  name = var.rg_name
  location = var.location
}
module "vnet" {
  source  = "app.terraform.io/terraform_learn_all_cloud/vnet/azurerm"
  version = "1.0.2"
  name = var.vnet_name
  location = var.location
  resource_group_name = module.ResourceGroup.id
  address_space = var.vnet_address_space
  tags = {
    env = var.tag
  }
}
