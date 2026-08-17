// variable "rg_name" {
//   description = "Name of the resource group"
//   type        = string
// }

// variable "location" {
//   description = "Location of the resource group"
//   type        = string
// }

// variable "vnets" {
//   description = "Map of VNets to create"

//   type = map(object({
//     name           = string
//     address_space  = list(string)
//   }))
// }
// variable "route_tables" {
//   description = "Map of Route Tables"

//   type = map(object({
//     name           = string
//     route_name     = string
//     address_prefix = string
//     next_hop_type  = string
//   }))
// }
// variable "subnets" {
//   description = "Map of Subnets"

//   type = map(object({
//     name             = string
//     vnet             = string
//     address_prefixes = list(string)
//     route_table      = optional(string)
//     nsg              = optional(string)
//   }))
// }
// variable "NSGs" {
//   description = "A map of NSG configurations"
//   type = map(object({
//     name                       = string
//     rule_name                  = string
//     priority                   = number
//     direction                  = string
//     access                     = string
//     protocol                   = string
//     source_port_range          = string
//     destination_port_range     = string
//     source_address_prefix      = string
//     destination_address_prefix = string
//   }))
// }

