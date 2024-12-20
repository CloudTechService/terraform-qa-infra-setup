
locals {
  name_vpc = "${var.env}-halo-vpc"
  region   = "ap-south-1"

  vpc_cidr = "10.0.0.0/16"
  azs      = slice(data.aws_availability_zones.available.names, 0, 3)

  tags = {
    Example   = local.name_vpc
    terraform = "true"
  }

  ecr = {
    stage     = "test"
    namespace = "qa"

  }
}