variable "address_space" {
  description = "Address space for VNet"
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

variable "location" {
  description = "azure region"
  type        = string
}
variable "tags" {
  description = "tags"
  type        = string
}
