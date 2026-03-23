variable "address_space" {
  description = "Address space for VNet"
  type        = string
}

variable "location" {
  description = "Azure region"
  type        = string
}

variable "name" {
  description = "VNet name"
  type        = string
}

variable "rg" {
  description = "Resource Group name"
  type        = string
}

variable "tags" {
  description = "tagname"
  type        = string
}
