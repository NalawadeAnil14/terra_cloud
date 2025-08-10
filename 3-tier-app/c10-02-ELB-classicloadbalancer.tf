module "elb" {
  source  = "terraform-aws-modules/elb/aws"
  version = "4.0.2"

  name            = "${local.name}-elb"
  security_groups = [module.lb_sg.security_group_id]

  subnets = [
    module.vpc.public_subnets[0],
    module.vpc.public_subnets[1]
  ]

  listener = [
    {
      instance_port     = 80
      instance_protocol = "HTTP"
      lb_port           = 80
      lb_protocol       = "HTTP"
    },
    {
      instance_port     = 80
      instance_protocol = "HTTP"
      lb_port           = 81
      lb_protocol       = "HTTP"
    }

  ]

  health_check = {
    target              = "HTTP:80/"
    interval            = 30
    healthy_threshold   = 2
    unhealthy_threshold = 2
    timeout             = 5
  }

  number_of_instances = length(module.private-ec2-instance)
  instances           = [for ec2instance in module.private-ec2-instance : ec2instance.id]

  tags = local.common_tags
}
