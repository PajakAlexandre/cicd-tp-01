instance_name    = "ec2-localstack-prod"
instance_type    = "t2.small"
root_volume_size = 20
root_volume_type = "gp3"
bucket_name      = "my-bucket-prod"

extra_volumes = [
  {
    device_name = "/dev/sdb"
    size        = 50
    type        = "gp3"
  }
]