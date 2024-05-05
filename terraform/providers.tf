provider "aws" {
  region = var.region
}

data "aws_caller_identity" "current" {}
data "aws_availability_zones" "available" {}

locals {
  name            = "${var.name_prefix}-${replace(basename(path.cwd), "_", "-")}"
  cluster_version = "1.29"
  region          = var.region

  vpc_cidr = "10.0.0.0/24"
  azs      = slice(data.aws_availability_zones.available.names, 0, 3)

  tags = {
    Example    = local.name
    GithubRepo = "terraform-aws-eks"
    GithubOrg  = "terraform-aws-modules"
  }
}

