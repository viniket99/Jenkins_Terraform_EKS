module "vpc" {
  source = "terraform-aws-modules/vpc/aws"
  version = "~>4.0"

  name = local.name
  cidr = local.vpc_cidr

  public_subnets = local.public_subnet
  private_subnets = local.private_subnet
  intra_subnets = local.intra_subnet
  azs = local.azs

  enable_nat_gateway = true

  public_subnet_tags = {
    "kubernetes.io/role/elb" = 1
  }

  private_subnet_tags = {
    "kubernetes.io/role/internal-elb" = 1

  }
}