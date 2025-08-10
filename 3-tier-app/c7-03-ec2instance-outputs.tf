output "public_instance_id" {
  description = "Bastion host id"
  value       = module.public-bastion-instance.id
}

output "public_bastion_ip" {
  description = "Public Ip of bastion host"
  value       = module.public-bastion-instance.public_ip 
}

output "private_ec2_id" {
  description = "Private server ids"
  value       = [for ec2instance in module.private-ec2-instance : ec2instance.id]
}

output "private_ips" {
  description = "Private servers ips"
  value       = [for ec2instance in module.private-ec2-instance : ec2instance.private_ip]
}
