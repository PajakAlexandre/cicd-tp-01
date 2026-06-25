variable "aws_region" {
  description = "Region AWS simulee par LocalStack"
  type        = string
  default     = "eu-west-1"
}

variable "localstack_endpoint" {
  description = "URL du endpoint LocalStack"
  type        = string
  default     = "http://localhost:4566"
}

variable "instance_name" {
  description = "Nom (tag Name) de l'instance EC2"
  type        = string
  default     = "ec2-localstack-demo"
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

variable "root_volume_size" {
  description = "Taille du disque racine (Go)"
  type        = number
  default     = 8
}

variable "root_volume_type" {
  description = "Type du disque racine"
  type        = string
  default     = "gp3"
}

variable "extra_volumes" {
  description = "Disques EBS additionnels a attacher a l'instance"
  type = list(object({
    device_name = string
    size        = number
    type        = string
  }))
  default = [
    {
      device_name = "/dev/sdb"
      size        = 10
      type        = "gp3"
    }
  ]
}

variable "bucket_name" {
  description = "Nom du bucket S3 a creer"
  type        = string
  default     = "my-bucket"
}
