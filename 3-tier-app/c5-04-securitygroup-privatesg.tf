module "private_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name        = "private_bastion_sg"
  description = "Security group with open port 22 and 80"
  vpc_id      = module.vpc.vpc_id

  ingress_rules       = ["ssh-tcp", "http-80-tcp"]
  ingress_cidr_blocks = [module.vpc.vpc_cidr_block]

  egress_rules = [all-all]

  tags = local.common_tags

}
