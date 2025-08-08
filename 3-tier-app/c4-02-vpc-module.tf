module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "6.0.1"

  name = "${local.name}-${var.vpc_name}"

  cidr = var.vpc_cidr_block

  azs              = var.vpc_availibity_zones
  private_subnets  = var.vpc_private_subnets
  public_subnets   = var.vpc_public_subnets
  database_subnets = var.vpc_database_subnets

  create_database_subnet_route_table = var.vpc_create_database_subnet_route_table
  create_database_subnet_group       = var.vpc_create_database_subnet_group

  enable_dns_hostnames = var.vpc_enable_dns_hostnames
  enable_dns_support   = var.vpc_enable_dns_support

  enable_nat_gateway = var.vpc_enable_nat_gateway
  single_nat_gateway = var.vpc_single_nat_gateway

  private_subnet_tags = {
    type = "Private subnets"
  }
  public_subnet_tags = {
    type = "Public subnets"
  }

  database_subnet_tags = {
    type = "Database subnets"
  }

  vpc_tags = local.common_tags
  tags     = local.common_tags
}
