module "public-bastion-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "6.0.2"

  name          = "${var.environment}-bastion"
  ami           = data.aws_ami.ec2server.id
  instance_type = var.instance_type
  key_name      = var.key_name

  vpc_security_group_ids = [module.public_bastion_sg.security_group_id]

  subnet_id = module.vpc.public_subnets[0]

  tags = local.common_tags
}
