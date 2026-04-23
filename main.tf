module "Resource-Group" {
  source  = "app.terraform.io/terraform_learn_all_cloud/Resource-Group/azurerm"
  version = "1.0.3"
  name = var.rgname
  location - var.location
}

module "vnet" {
  source  = "app.terraform.io/terraform_learn_all_cloud/vnet/azurerm"
  version = "1.0.2"
  address_space = var.address_space
  location = var.location
  name = var.name
  resource_group_name = var.rg
  tags = var.tags
}
