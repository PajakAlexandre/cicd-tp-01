variable "name" {
  description = "Tag Name de l'instance"
  type        = string
}

variable "instance_type" {
  description = "Type d'instance EC2"
  type        = string
  default     = "t2.micro"
}

variable "ami_id" {
  description = "AMI a utiliser. Si vide, l'AMI la plus recente (data.aws_ami) est utilisee"
  type        = string
  default     = null
}

variable "subnet_id" {
  description = "Subnet dans lequel lancer l'instance"
  type        = string
}

variable "security_group_ids" {
  description = "Security groups attaches a l'instance"
  type        = list(string)
}

variable "root_volume_size" {
  description = "Taille du disque racine (Go)"
  type        = number
  default     = 8
}

variable "root_volume_type" {
  description = "Type du disque racine (gp2, gp3, io1...)"
  type        = string
  default     = "gp3"
}

variable "extra_volumes" {
  description = "Disques EBS additionnels a creer et attacher a l'instance"
  type = list(object({
    device_name = string
    size        = number
    type        = string
  }))
  default = []
}
