module "Vnet" {
  source  = "app.terraform.io/terraform_learn_all_cloud/Vnet/azurerm"
  version = "1.0.2"
  address_space = var.address_space
  location = var.location
  name = var.name
  resource_group_name = var.rg
}
