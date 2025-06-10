output "for_each_ec2_public_ip_output" {
    value = [
        for instance in aws_instance.tf-instance : instance.public_ip
    ] 
}

output "for_each_ec2_instance_type_output" {
    value = [
        for instance in aws_instance.tf-instance : instance.instance_type
    ]
}

output "for_each_ec2_public_dns_output" {
    value = [
        for instance in aws_instance.tf-instance : instance.public_dns
    ]
  
}