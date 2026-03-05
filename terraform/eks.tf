module "eks" {
  source  = "terraform-aws-modules/eks/aws"
  version = "19.15.3"

  cluster_name    = "cluster-lab-canary"
  cluster_version = "1.29"

  # VPC configuration
  vpc_id                   = module.vpc.vpc_id
  subnet_ids               = module.vpc.private_subnets
  control_plane_subnet_ids = module.vpc.private_subnets

  # Allow public access to Kubernetes API
  cluster_endpoint_public_access = true

  # Managed worker nodes configuration
  eks_managed_node_groups = {
    nodegroup_principal = {
      min_size     = 1
      max_size     = 3
      desired_size = 2

      instance_types = ["t3.medium"]
    }
  }
}