locals {
  region = "eu-north-1"
  name = "vini-eks-cluster"
  vpc_cidr = "10.0.0.0/16"
  azs = ["eu-north-1b", "eu-north-1c"]
  public_subnet = ["10.0.1.0/24", "10.0.2.0/24"]
  private_subnet = ["10.0.3.0/24", "10.0.4.0/24"]
  intra_subnet = ["10.0.5.0/24", "10.0.6.0/24"]

  tags = {
    Example = local.name
  }
}

provider "aws" {
    region = "eu-north-1"
}