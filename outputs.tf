

############  AMI OUTPUT   ################

output "ami_id_halopay_api" {
  value = data.aws_ami.halopay_api.id
}

output "ami_id_test_jenkins" {
  value = data.aws_ami.test_jenkins.id
}

output "ami_id_test_sylvan" {
  value = data.aws_ami.test_sylvan.id
}

output "ami_id_ecommerce" {
  value = data.aws_ami.ecommerce.id
}

output "ami_id_halopay_cluster" {
  value = data.aws_ami.halopay_cluster.id
}

output "ami_id_optionpulse_api" {
  value = data.aws_ami.optionpulse_api.id
}

output "ami_id_message_centre" {
  value = data.aws_ami.message_centre.id
}

output "ami_id_enrollible_frontend" {
  value = data.aws_ami.enrollible_frontend.id
}

output "ami_id_enrollible_api" {
  value = data.aws_ami.enrollible_api.id
}


############### INSTANCE IP ####################

output "optionpulse_public_ip" {
  value = module.ec2_optionpulse.public_ip
}

output "ec2_halopay_cluster_ip" {
  value = module.ec2_halopay_cluster.public_ip
}

output "ec2_halopay_api_ip" {
  value = module.ec2_halopay_api.public_ip
}

output "ec2_sylvan_api_ip" {
  value = module.ec2_sylvan_api.public_ip
}


output "ec2_message_centre_ip" {
  value = module.ec2_message_centre.public_ip
}

output "ec2_enrollible_frontend_ip" {
  value = module.ec2_enrollible_frontend.public_ip
}

output "ec2_ecommerce_ip" {
  value = module.ec2_ecommerce.public_ip
}

output "ec2_enrollible_api_ip" {
  value = module.ec2_enrollible_api.public_ip
}


output "ec2_test_jenkins_ip" {
  value = module.ec2_test_jenkins.public_ip
}

output "vpc_id" {
  value = module.halo-qa-vpc.vpc_id
}