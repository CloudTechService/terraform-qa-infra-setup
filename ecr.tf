# module "ecs_halopay" {
#   source    = "git::https://github.com/cloudposse/terraform-aws-ecr.git?ref=f419d8b"
#   name      = var.halopay_ecr_name
#   stage     = local.ecr.halopay_stage
#   namespace = local.ecr.helopay_namespace
# }

# module "ecr_enrollible" {
#   source    = "git::https://github.com/cloudposse/terraform-aws-ecr.git?ref=f419d8b"
#   name      = var.enrollible_ecr_name
#   stage     = local.ecr.enrollible_stage
#   namespace = local.ecr.enrollible_namespace
# }

# module "ecr_halopay_backend" {
#   source    = "git::https://github.com/cloudposse/terraform-aws-ecr.git?ref=f419d8b"
#   name      = var.halopay_backend_ecr_name
#   stage     = local.ecr.halopay_backend_stage
#   namespace = local.ecr.halopay_backend_namespace
# }