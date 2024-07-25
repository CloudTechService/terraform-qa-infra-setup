module "web_server_sg" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-security-group.git?ref=20e107f"

  name        = "${var.env}-web-server"
  description = "Security group for web-server with HTTP ports open within VPC"
  vpc_id      = module.halo-qa-vpc.vpc_id

  ingress_cidr_blocks = ["0.0.0.0/0"]
  ingress_rules       = ["https-443-tcp", "http-80-tcp", "ssh-tcp"]
  ingress_with_cidr_blocks = [
    {
      from_port   = 8080
      to_port     = 8090
      protocol    = "tcp"
      description = "User-service ports"
      cidr_blocks = "10.10.0.0/16"
    },
    {
      rule        = "postgresql-tcp"
      cidr_blocks = "0.0.0.0/0"
    },
  ]
  egress_cidr_blocks = ["0.0.0.0/0"]
  egress_with_cidr_blocks = [
    {

      rule        = "https-443-tcp"
      cidr_blocks = "0.0.0.0/0"
    }
  ]
}


