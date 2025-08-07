variable "region" {}
variable "vpc_cidr" {
  default = "10.0.0.0/16"
}
variable "vpc_name" {}
variable "subnet_cidr" {}
variable "ami_id" {}
variable "instance_type" {
  default = "t2.micro"
}
variable "key_name" {}

