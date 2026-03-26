
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
variable "address_space" {
  type = list(string)
}

variable "tags" {
  type = map(string)
}
