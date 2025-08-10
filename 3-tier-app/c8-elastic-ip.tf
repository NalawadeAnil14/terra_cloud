resource "aws_eip" "eip" {

  depends_on = [module.public-bastion-instance, module.vpc]
  instance   = module.public-bastion-instance.id
  domain     = "vpc"

  tags = local.common_tags
}
