module "vpc" {
  source = "./modules/vpc"

  name = var.instance_name
}

module "security_group" {
  source = "./modules/security-group"

  name   = "${var.instance_name}-sg"
  vpc_id = module.vpc.vpc_id
}

module "ec2_instance" {
  source = "./modules/ec2-instance"

  name               = var.instance_name
  instance_type      = var.instance_type
  ami_id             = var.ami_id
  subnet_id          = module.vpc.public_subnet_id
  security_group_ids = [module.security_group.security_group_id]
  root_volume_size   = var.root_volume_size
  root_volume_type   = var.root_volume_type
  extra_volumes      = var.extra_volumes
}

module "s3" {
  source = "./modules/s3"

  bucket_name = var.bucket_name
}
