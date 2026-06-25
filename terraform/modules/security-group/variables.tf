variable "name" {
  description = "Nom du security group"
  type        = string
}

variable "vpc_id" {
  description = "VPC dans lequel creer le security group"
  type        = string
}

variable "ingress_rules" {
  description = "Liste des regles d'entree autorisees"
  type = list(object({
    description = string
    from_port   = number
    to_port     = number
    protocol    = string
    cidr_blocks = list(string)
  }))
  default = [
    {
      description = "SSH"
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
  ]
}
