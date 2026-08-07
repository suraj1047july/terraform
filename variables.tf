variable "rg_name" {
  description = "Name of the resource group"
  type        = string
}

variable "location" {
  description = "Location of the resource group"
  type        = string
}

variable "vnets" {
  description = "Map of VNets to create"

  type = map(object({
    name           = string
    address_space  = list(string)
  }))
}
variable "route_tables" {
  description = "Map of Route Tables"

  type = map(object({
    name           = string
    route_name     = string
    address_prefix = string
    next_hop_type  = string
  }))
}
variable "subnets" {
  description = "Map of Subnets"

  type = map(object({
    subnet_name      = string
    resource_group   = string
    vnet             = string
    address_prefixes = list(string)
  }))
}
