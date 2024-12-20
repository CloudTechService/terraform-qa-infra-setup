module "ec2_optionpulse" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-ec2-instance.git?ref=4f8387d"

  name = "${var.env}-optionpluse-api"

  instance_type = "m6a.large"
  ami           = data.aws_ami.optionpulse_api.id

  key_name                    = "qakey"
  monitoring                  = false
  vpc_security_group_ids      = [module.web_server_sg.security_group_id]
  subnet_id                   = module.halo-qa-vpc.public_subnets[0]
  associate_public_ip_address = false

  iam_instance_profile = aws_iam_instance_profile.instance_profile.name


  tags = {
    Terraform   = "false"
    Environment = "qa"
    Project     = "halostream"
  }
}

module "ec2_halopay_cluster" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-ec2-instance.git?ref=4f8387d"

  name = "${var.env}-halopay-cluster"
  ami  = data.aws_ami.halopay_cluster.id


  instance_type               = "t3.nano"
  key_name                    = "qakey"
  monitoring                  = false
  vpc_security_group_ids      = [module.web_server_sg.security_group_id]
  subnet_id                   = module.halo-qa-vpc.public_subnets[1]
  associate_public_ip_address = false

  iam_instance_profile = aws_iam_instance_profile.instance_profile.name


  tags = {
    Terraform   = "false"
    Environment = "qa"
    Project     = "halostream"
  }
}

module "ec2_halopay_api" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-ec2-instance.git?ref=4f8387d"

  name = "${var.env}-halopay-api"
  ami  = data.aws_ami.halopay_api.id


  instance_type               = "t3a.small"
  key_name                    = "qakey"
  monitoring                  = false
  vpc_security_group_ids      = [module.web_server_sg.security_group_id]
  subnet_id                   = module.halo-qa-vpc.public_subnets[2]
  associate_public_ip_address = false

  iam_instance_profile = aws_iam_instance_profile.instance_profile.name


  tags = {
    Terraform   = "false"
    Environment = "qa"
    Project     = "halostream"
  }
}

module "ec2_sylvan_api" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-ec2-instance.git?ref=4f8387d"

  name = "${var.env}-test-prod-sylvan-api"
  ami  = data.aws_ami.test_sylvan.id


  instance_type               = "t3a.small"
  key_name                    = "qakey"
  monitoring                  = false
  vpc_security_group_ids      = [module.web_server_sg.security_group_id]
  subnet_id                   = module.halo-qa-vpc.public_subnets[0]
  associate_public_ip_address = false

  iam_instance_profile = aws_iam_instance_profile.instance_profile.name


  tags = {
    Terraform   = "false"
    Environment = "qa"
    Project     = "halostream"
  }
}

module "ec2_message_centre" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-ec2-instance.git?ref=4f8387d"

  name = "${var.env}-message-centre-api"
  ami  = data.aws_ami.enrollible_frontend.id


  instance_type               = "t3.medium"
  key_name                    = "qakey"
  monitoring                  = false
  vpc_security_group_ids      = [module.web_server_sg.security_group_id]
  subnet_id                   = module.halo-qa-vpc.public_subnets[1]
  associate_public_ip_address = false

  iam_instance_profile = aws_iam_instance_profile.instance_profile.name


  tags = {
    Terraform   = "false"
    Environment = "qa"
    Project     = "halostream"
  }
}

module "ec2_enrollible_frontend" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-ec2-instance.git?ref=4f8387d"

  name = "${var.env}-enrollible-frontend-api"
  ami  = data.aws_ami.enrollible_frontend.id


  instance_type               = "t3a.medium"
  key_name                    = "qakey"
  monitoring                  = false
  vpc_security_group_ids      = [module.web_server_sg.security_group_id]
  subnet_id                   = module.halo-qa-vpc.public_subnets[2]
  associate_public_ip_address = false

  iam_instance_profile = aws_iam_instance_profile.instance_profile.name


  tags = {
    Terraform   = "false"
    Environment = "qa"
    Project     = "halostream"
  }
}

module "ec2_ecommerce" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-ec2-instance.git?ref=4f8387d"

  name = "${var.env}-ecommerce-api"
  ami  = data.aws_ami.ecommerce.id


  instance_type               = "t2.large"
  key_name                    = "qakey"
  monitoring                  = false
  vpc_security_group_ids      = [module.web_server_sg.security_group_id]
  subnet_id                   = module.halo-qa-vpc.public_subnets[0]
  associate_public_ip_address = false

  iam_instance_profile = aws_iam_instance_profile.instance_profile.name


  tags = {
    Terraform   = "false"
    Environment = "qa"
    Project     = "halostream"
  }
}

module "ec2_enrollible_api" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-ec2-instance.git?ref=4f8387d"

  name = "${var.env}-enrollible-api"
  ami  = data.aws_ami.enrollible_api.id


  instance_type               = "m6a.large"
  key_name                    = "qakey"
  monitoring                  = false
  vpc_security_group_ids      = [module.web_server_sg.security_group_id]
  subnet_id                   = module.halo-qa-vpc.public_subnets[1]
  associate_public_ip_address = false

  iam_instance_profile = aws_iam_instance_profile.instance_profile.name


  tags = {
    Terraform   = "false"
    Environment = "qa"
    Project     = "halostream"
  }
}

module "ec2_test_jenkins" {
  source = "git::https://github.com/terraform-aws-modules/terraform-aws-ec2-instance.git?ref=4f8387d"

  name = "${var.env}-test-jenkins"
  ami  = data.aws_ami.test_jenkins.id


  instance_type               = "t3a.medium"
  key_name                    = "qakey"
  monitoring                  = false
  vpc_security_group_ids      = [module.web_server_sg.security_group_id]
  subnet_id                   = module.halo-qa-vpc.public_subnets[2]
  associate_public_ip_address = false

  iam_instance_profile = aws_iam_instance_profile.instance_profile.name

  tags = {
    Terraform   = "false"
    Environment = "qa"
    Project     = "halostream"
  }
}

# resource "aws_eip" "optionpluse" {
#   instance = module.ec2_optionpulse.id
#   tags = {
#     Name = "${var.env}-optionpluse-api"
#   }
# }

# resource "aws_eip" "halopay_cluster" {
#   instance = module.ec2_halopay_cluster.id
#   tags = {
#     Name = "${var.env}-halopay-cluster"
#   }
# }

# resource "aws_eip" "halopay_api" {
#   instance = module.ec2_halopay_api.id
#   tags = {
#     Name = "${var.env}-halopay-api"
#   }
# }

# resource "aws_eip" "prod_sylvan" {
#   instance = module.ec2_sylvan_api.id
#   tags = {
#     Name = "${var.env}-test-prod-sylvan-api"
#   }
# }

# resource "aws_eip" "message_centre" {
#   instance = module.ec2_message_centre.id
#   tags = {
#     Name = "${var.env}-message-centre-api"
#   }
# }


# resource "aws_eip" "enrollible_frontend" {
#   instance = module.ec2_enrollible_frontend.id
#   tags = {
#     Name = "${var.env}-enrollible-frontend-api"
#   }
# }

# resource "aws_eip" "ecommerce_api" {
#   instance = module.ec2_ecommerce.id
#   tags = {
#     Name = "${var.env}-ecommerce-api"
#   }
# }

# resource "aws_eip" "enrollible_api" {
#   instance = module.ec2_enrollible_api.id
#   tags = {
#     Name = "${var.env}-enrollible-api"
#   }
# }

resource "aws_eip" "test_jenkins" {
  instance = module.ec2_test_jenkins.id
  tags = {
    Name = "${var.env}-test-jenkins"
  }
}






