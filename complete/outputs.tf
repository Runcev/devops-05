output "private_key_openssh" {
    description = "Private key data in OpenSSH PEM (RFC 4716) format"
    value       = module.key_pair.private_key_openssh
    sensitive   = true
}

output "private_key_pem" {
    description = "Private key data in PEM (RFC 1421) format"
    value       = module.key_pair.private_key_pem
    sensitive   = true
}

output "public_key_openssh" {
    description = "The public key data in OpenSSH format"
    value       = module.key_pair.public_key_openssh
}

output "public_key_pem" {
    description = "Public key data in PEM (RFC 1421) format"
    value       = module.key_pair.public_key_pem
}

output "ec2_instance_public_ip" {
    description = "The public IP address assigned to the EC2 instance"
    value       = module.ec2_instance.public_ip
}