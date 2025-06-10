# Key Pair 
resource "aws_key_pair" "tf-key-pair" {
    key_name = "tf-key-pair"
    public_key = file("tf-ec2-key.pub")
}

# VPC && Subnet 
resource "aws_default_vpc" "default" {
  
}

# Security Group
resource "aws_security_group" "tf-security-group" {
    name = "tf-SG"
    description = "This SG from TF"
    vpc_id = aws_default_vpc.default.id  #interpolation : inherit or extract value from terraform block
    tags = {
      name = "tf-SG"
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
    #count = 2 # Meta Argument [ It is create multiple resources with same name ]
    for_each = tomap({      #[For each meta argument use for create multiple instance with different name]
        tf-micro-instance = "t2.micro",
        tf-medium-instance = "t2.medium"
    })
    depends_on = [ aws_security_group.tf-security-group , aws_key_pair.tf-key-pair ] #multiple Depends


    key_name = aws_key_pair.tf-key-pair.key_name
    security_groups = [ aws_security_group.tf-security-group.name ]
    #instance_type = "t2.micro"
    # call the meta argument value 
    instance_type = each.value
    ami = "ami-0f9de6e2d2f067fca" #ubunu image


    # root storage in EC2 
    root_block_device {
      volume_size = 15
      volume_type = "gp3"
    }
    tags = {
      #name = "tf-instance"
      name = each.key
    }  
}