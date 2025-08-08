variable "region" {
  description = "AWS region"
  type        = string
  default     = "us-east-1"
}

variable "environment" {
  description = "Environment variable used as prefix"
  type        = string
  default     = "dev"
}

variable "business_division" {
  description = "Business division in largee organization this infra is belongs to"
  type        = string
  default     = "hr"
}
