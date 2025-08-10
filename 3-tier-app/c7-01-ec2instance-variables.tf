variable "ami_id" {
  description = "ami id for ec2 server"
  type        = string
  default     = "ami-0de716d6197524dd9"
}

variable "key_name" {
  description = "Key pair name for server"
  type        = string
  default     = "ansible_target"
}

variable "instance_type" {
  description = "instance type for server"
  type        = string
  default     = "t2.micro"
}
