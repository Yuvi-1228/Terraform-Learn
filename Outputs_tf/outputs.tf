output "ec2_public_ip" {
    value = aws_instance.tf-instance.public_ip
}

output "ec2_public_dns"{
    value = aws_instance.tf-instance.public_dns
}

output "ec2_security_groups"{
    value = aws_security_group.tf-security-group.id
}


output "ec2_security_groups_ingress"{
    value = aws_security_group.tf-security-group.ingress
}
