output "instance_id" {
  value = aws_instance.this.id
}

output "public_ip" {
  value = aws_instance.this.public_ip
}

output "key_name" {
  value = aws_key_pair.this.key_name
}

output "private_key_pem" {
  value     = tls_private_key.this.private_key_pem
  sensitive = true
}

output "extra_volume_ids" {
  value = { for k, v in aws_ebs_volume.extra : k => v.id }
}
