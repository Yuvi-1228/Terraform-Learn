# Key Pair 
resource "aws_key_pair" "tf-key-pair" {
    key_name = "${var.env}-tf_infra_app"
    public_key = file("tf-ec2-key.pub")

    tags = {
      Environment = var.env
    }
}

# VPC && Subnet 
resource "aws_default_vpc" "default" {
  
}

# Security Group
resource "aws_security_group" "tf-security-group" {
    name = "${var.env}-tf-infra-SG"
    description = "This SG from TF"
    vpc_id = aws_default_vpc.default.id  #interpolation : inherit or extract value from terraform block
    tags = {
      name = "${var.env}-tf-infra-SG"
    }
    # Inbound Rule 
    ingress {
        from_port = 22
        to_port = 22
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "tcp"
        description = "SSH Access"
    }
    ingress {
        from_port = 80
        to_port = 80 
        cidr_blocks = ["0.0.0.0/0"]
        protocol = "tcp"
        description = "HTTP Access"

    }
    # Outbound rule 
    egress {
        from_port = 0 
        to_port = 0
        protocol = "-1"
        cidr_blocks = ["0.0.0.0/0"]
        description = " Allow All access"     

    }
}

# EC2 Instances 
resource "aws_instance" "tf-instance" {
    count = var.instance_count
    key_name = aws_key_pair.tf-key-pair.key_name
    security_groups = [ aws_security_group.tf-security-group.name ]
    instance_type = var.instance_type
    ami = var.ec2_ami #ubunu image
    # root storage in EC2 
    root_block_device {
      volume_size = var.ec2_storage
      volume_type = "gp3"
    }
    tags = {
      Name = "${var.env}-tf-instance"
      Environment = var.env
    }  
}