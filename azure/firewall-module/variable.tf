variable "firewall_name" {
  description = "Name of the Azure Firewall"
  type        = string
}

variable "firewall_policy_name" {
  description = "Name of the Azure Firewall Policy"
  type        = string
}

variable "firewall_policy_sku" {
  description = "Firewall Policy SKU (Standard or Premium)"
  type        = string
  default     = "Standard"
}

variable "resource_group_name" {
  description = "Resource group name"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "firewall_sku_name" {
  description = "Firewall SKU name"
  type        = string
  default     = "AZFW_VNet"
}

variable "firewall_sku_tier" {
  description = "Firewall SKU tier (Standard or Premium)"
  type        = string
  default     = "Standard"
}

variable "firewall_subnet_id" {
  description = "Subnet ID of AzureFirewallSubnet"
  type        = string
}

variable "public_ip_id" {
  description = "Public IP resource ID for Azure Firewall"
  type        = string
}

variable "tags" {
  description = "Tags to apply to resources"
  type        = map(string)
  default     = {}
}
