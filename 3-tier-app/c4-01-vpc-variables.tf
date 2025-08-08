##
variable "vpc_availibity_zones" {
  description = "Availibity zone for vpc"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]

}

variable "vpc_name" {
  description = "Name to vpc"
  type        = string
  default     = "my-vpc"
}

variable "vpc_cidr_block" {
  description = "CIDR block for vpc"
  type        = string
  default     = "10.0.0.0/16"
}

variable "vpc_private_subnets" {
  description = "private subnets"
  type        = list(string)
  default     = ["10.0.1.0/24", "10.0.2.0/24"]
}

variable "vpc_public_subnets" {
  description = "public subnets"
  type        = list(string)
  default     = ["10.0.101.0/24", "10.0.102.0/24"]
}

variable "vpc_database_subnets" {
  description = "database subnets"
  type        = list(string)
  default     = ["10.0.151.0/24", "10.0.152.0/24"]
}

variable "vpc_create_database_subnet_route_table" {
  description = "database routetable enable or disable"
  type        = bool
  default     = true
}

variable "vpc_create_database_subnet_group" {
  description = "create database subnet group"
  type        = bool
  default     = true
}

variable "vpc_enable_dns_hostnames" {
  description = "Enable or disable dns hostnames"
  type        = bool
  default     = true
}

variable "vpc_enable_dns_support" {
  description = "Enable or disable dns support"
  type        = bool
  default     = true
}

variable "vpc_enable_nat_gateway" {
  description = "Enable nat gateway"
  type        = bool
  default     = true
}

variable "vpc_single_nat_gateway" {
  description = "single nat gatway for azs"
  type        = bool
  default     = true
}
