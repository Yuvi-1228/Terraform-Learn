# Import the module template from terraform registry 
module "eks_cluster" {
  source  = "terraform-aws-modules/eks/aws"
  version = "~> 20.31"

  # Create a cluster 
  cluster_name    = local.name
  cluster_version = 1.31 # If you need perticular cluster version otherwise by default it will select latest version

  # Optional
  cluster_endpoint_public_access = true

  # Connect cluster with network
  vpc_id     = module.vpc.vpc_id
  subnet_ids = module.vpc.private_subnets

  # Cluster Addons 
  cluster_addons = {
    vpc_cni = {
      most-recent = true
    }
    kube-proxy = {
      most-recent = true
    }
    coredns = {
      most-recent = true
    }
  }

  # Create cluster network 
  control_plane_subnet_ids = module.vpc.intra_subnets

  # Create defaults manage group and attach security group in cluster 
  eks_managed_node_group_defaults = {
    instance_types                        = ["t2.medium"]
    attach_cluster_primary_security_group = true
  }

  # Create Nodes group and provide maximum and minimum nodes 
  eks_managed_node_groups = {
    tf_cluster_ng = {
      # Starting on 1.30, AL2023 is the default AMI type for EKS managed node groups
      #ami_type       = "AL2023_x86_64_STANDARD"
      instance_types = ["t2.medium"]
      min_size       = 2
      max_size       = 3
      desired_size   = 2

      # Provide Instance type for cost optimization
      capacity_type = "SPOT"
    }
  }

  # Provide tags and Environment for cluster
  tags = {
    Environment = local.env
    Terraform   = "true"
  }
}
