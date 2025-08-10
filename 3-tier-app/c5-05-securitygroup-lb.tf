module "lb_sg" {
  source  = "terraform-aws-modules/security-group/aws"
  version = "5.1.0"

  name        = "${local.name}-lb-sg"
  description = "Security group of load balancer"

  ingress_rules       = ["http-80-tcp"]
  ingress_cidr_blocks = ["0.0.0.0/0"]

  ingress_with_cidr_blocks = [{
    from_port   = 81
    to_port     = 81
    protocol    = 6
    cidr_blocks = "0.0.0.0/0"
    description = "Allow prot 81 from internet"
  }]

  egress_rules = ["all-all"]

  tags = local.common_tags

}
