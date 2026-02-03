resource "azurerm_firewall_policy" "firewall_policy" {
  name                = var.firewall_policy_name
  resource_group_name = var.resource_group_name
  location            = var.location
  sku                 = var.firewall_policy_sku
}

resource "azurerm_firewall" "AZ_firewall" {
  name                = var.firewall_name
  location            = var.location
  resource_group_name = var.resource_group_name
  sku_name            = var.firewall_sku_name
  sku_tier            = var.firewall_sku_tier
  firewall_policy_id  = azurerm_firewall_policy.this.id

  ip_configuration {
    name                 = "firewall-ipconfig"
    subnet_id            = var.firewall_subnet_id
    public_ip_address_id = var.public_ip_id
  }

  tags = var.tags
}
