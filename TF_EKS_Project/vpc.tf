module "vpc" {
    source = "terraform-aws-modules/vpc/aws"
    
    # Create a VPC and subnets call from local variables 
    name = "${local.name}-vpc"
    cidr = local.vpc_cidr
    
    # Create Subnets
    azs             = local.azs
    private_subnets = local.private_subnets
    public_subnets  = local.public_subnets
    intra_subnets   = local.intra_subnets
    
    # Create NAT Gateway
    enable_nat_gateway = true
    enable_vpn_gateway = true
    
    # Provide tags and environment 
    tags = {
    Terraform = "true"
    Enviornment = local.env
  }
}