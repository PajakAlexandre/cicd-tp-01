output "instance_id" {
  description = "ID de l'instance EC2 creee"
  value       = module.ec2_instance.instance_id
}

output "instance_public_ip" {
  description = "IP publique simulee de l'instance"
  value       = module.ec2_instance.public_ip
}

output "ssh_key_name" {
  description = "Nom de la key pair attachee a l'instance"
  value       = module.ec2_instance.key_name
}

output "ssh_private_key_pem" {
  description = "Cle privee SSH generee (a sauvegarder dans un fichier .pem)"
  value       = module.ec2_instance.private_key_pem
  sensitive   = true
}

output "extra_volume_ids" {
  description = "IDs des disques EBS additionnels attaches a l'instance"
  value       = module.ec2_instance.extra_volume_ids
}

output "bucket_name" {
  description = "Nom du bucket S3 cree"
  value       = module.s3.bucket_id
}
