module "vpc" {
  source  = "app.terraform.io/terraform_learn_all_cloud/vpc/aws"
  version = "1.0.0"
  for_each =var.vpcs
  cidr = each.value.cidr
  name = "${each.value.name}"
}
module "subnet" {
  source  = "app.terraform.io/terraform_learn_all_cloud/subnet/aws"
  version = "1.0.0"
  # insert required variables here
  for_each =var.subnets
  cidr_blocks = each.value.cidr_blocks
  vpc_id = module.vpc[each.value.vpc_key].vpc_id
  name = each.value.name
  azs = ["ap-south-1a", "ap-south-1b"]
  public = "true"
}
