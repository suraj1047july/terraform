module "vnet" {
  source  = "app.terraform.io/terraform_learn_all_cloud/vnet/azurerm"
  version = "1.0.2"
  address_space = var.address_space
  location = "Central India"
  name = var.name
  resource_group_name = var.rg
  tags = var.tags
}
