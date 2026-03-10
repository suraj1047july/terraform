variable "vpcs" {
  description = "Map of VPC configurations"
  type = map(object({
    cidr = string
    name = string
  }))
}
# variable "aws_region" {
#   description = "AWS region"
#   type        = string
# }
variable "subnets" {
  description = "Map of subnet configurations"
  type = map(object({
    cidr_blocks = list(string)
    name = string
    vpc_key = string
  }))
}
