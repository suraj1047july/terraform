module "ResourceGroup" {
  source  = "app.terraform.io/terraform_learn_all_cloud/ResourceGroup/azurerm"
  version = "1.0.0"
  name = var.rg_name
  location = var.location
}
module "Vnet" {
  source  = "app.terraform.io/terraform_learn_all_cloud/Vnet/azurerm"
  version = "1.0.0"
  name = var.vnet_name
  location = var.location
  resource_group = module.ResourceGroup.id
  address_space = var.vnet_address_space
  tags = {
    env = var.tag
  }
}

