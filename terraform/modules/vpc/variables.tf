variable "name" {
  description = "Nom de base pour les ressources VPC"
  type        = string
}

variable "vpc_cidr" {
  description = "CIDR du VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "subnet_cidr" {
  description = "CIDR du subnet public"
  type        = string
  default     = "10.0.1.0/24"
}

variable "availability_zone" {
  description = "AZ du subnet public"
  type        = string
  default     = "eu-west-1a"
}
