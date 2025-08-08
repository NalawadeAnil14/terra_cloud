output "vpc_id" {
  description = "vpic id output"
  value       = module.vpc.vpc_id
}

output "vpc_cidr_block" {
  description = "vpc cidr block"
  value       = module.vpc.vpc_cidr_block
}

output "vpc_az" {
  description = "availibilty zones"
  value       = module.vpc.azs
}

output "vpc_private_subnets" {
  description = "vpc private subnets"
  value       = module.vpc.private_subnets
}

output "vpc_public_subnets" {
  description = "vpc public subnets"
  value       = module.vpc.public_subnets
}

output "vpc_nat_ip" {
  description = "nat ip"
  value       = module.vpc.nat_public_ips
}
