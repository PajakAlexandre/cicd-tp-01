instance_name    = "ec2-localstack-dev"
instance_type    = "t2.micro"
root_volume_size = 8
root_volume_type = "gp3"
bucket_name      = "my-bucket"

extra_volumes = [
  {
    device_name = "/dev/sdb"
    size        = 10
    type        = "gp3"
  }
]