resource "azurerm_firewall" "example" {
  name                = var.name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = var.sku_name
  sku_tier            = var.tier

  ip_configuration {
    name                 = var.name
    subnet_id            = var.subnet
    public_ip_address_id = var.public_ip
  }
}
