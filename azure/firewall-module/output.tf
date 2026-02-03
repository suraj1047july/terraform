output "firewall_id" {
  description = "Azure Firewall ID"
  value       = azurerm_firewall.this.id
}

output "firewall_private_ip" {
  description = "Private IP address of Azure Firewall"
  value       = azurerm_firewall.this.ip_configuration[0].private_ip_address
}

output "firewall_policy_id" {
  description = "Firewall Policy ID"
  value       = azurerm_firewall_policy.this.id
}
