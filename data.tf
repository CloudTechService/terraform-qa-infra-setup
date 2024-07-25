data "aws_availability_zones" "available" {}


data "aws_ami" "halopay_api" {
  most_recent = true

  filter {
    name   = "name"
    values = ["qa-halopay-api-ami-2"] # Replace with the actual AMI name
  }

  owners = ["self", "amazon"] # Replace with the relevant owner(s)
}

data "aws_ami" "test_jenkins" {
  most_recent = true

  filter {
    name   = "name"
    values = ["test-jenkins-ami-2"] # Replace with the actual AMI name
  }

  owners = ["self", "amazon"] # Replace with the relevant owner(s)
}

data "aws_ami" "test_sylvan" {
  most_recent = true

  filter {
    name   = "name"
    values = ["test-prod-sylvan-ami-2"] # Replace with the actual AMI name
  }

  owners = ["self", "amazon"] # Replace with the relevant owner(s)
}

data "aws_ami" "ecommerce" {
  most_recent = true

  filter {
    name   = "name"
    values = ["qa-ecommerce-ami-2"] # Replace with the actual AMI name
  }

  owners = ["self", "amazon"] # Replace with the relevant owner(s)
}

data "aws_ami" "halopay_cluster" {
  most_recent = true

  filter {
    name   = "name"
    values = [" qa-halopay-cluster-ami-2"] # Replace with the actual AMI name
  }

  owners = ["self", "amazon"] # Replace with the relevant owner(s)
}

data "aws_ami" "message_centre" {
  most_recent = true

  filter {
    name   = "name"
    values = ["qa-message-center-api-ami-2"] # Replace with the actual AMI name
  }

  owners = ["self", "amazon"] # Replace with the relevant owner(s)
}

data "aws_ami" "optionpulse_api" {
  most_recent = true

  filter {
    name   = "name"
    values = ["qa-optionpluse-api-ami"] # Replace with the actual AMI name
  }

  owners = ["self", "amazon"] # Replace with the relevant owner(s)
}

data "aws_ami" "enrollible_frontend" {
  most_recent = true

  filter {
    name   = "name"
    values = ["qa-enrollible-frontend-ami-2"] # Replace with the actual AMI name
  }

  owners = ["self", "amazon"] # Replace with the relevant owner(s)
}

data "aws_ami" "enrollible_api" {
  most_recent = true

  filter {
    name   = "name"
    values = ["enrollible-api-ami-2"] # Replace with the actual AMI name
  }

  owners = ["self", "amazon"] # Replace with the relevant owner(s)
}