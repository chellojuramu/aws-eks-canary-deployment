module "vpc" {
  source  = "terraform-aws-modules/vpc/aws"
  version = "5.5.0"

  name = "vpc-lab-canary"
  cidr = "10.0.0.0/16"

  # Availability Zones
  azs = ["us-east-1a", "us-east-1b"]

  # Private subnets (used for Kubernetes worker nodes)
  private_subnets = [
    "10.0.1.0/24",
    "10.0.2.0/24"
  ]

  # Public subnets (used for Load Balancers / NAT Gateway)
  public_subnets = [
    "10.0.101.0/24",
    "10.0.102.0/24"
  ]

  # Enable NAT so private instances can access the internet
  enable_nat_gateway = true
  single_nat_gateway = true

  # Tags for Kubernetes to identify public load balancer subnets
  public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }

  # Tags for Kubernetes internal load balancers
  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1
  }
}