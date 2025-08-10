module "private-ec2-instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "6.0.2"

  depends_on = [module.vpc]

  name          = "${var.environment}-vm"
  ami           = data.aws_ami.ec2server.id
  instance_type = var.instance_type
  key_name      = var.key_name
  user_data     = "${path.module}/user_data.sh"

  vpc_security_group_ids = [module.private_sg.id]

  for_each  = toset(["0", "1"])
  subnet_id = element(module.vpc.private_subnets, tonumber(each.key))

  tags = local.common_tags
}
