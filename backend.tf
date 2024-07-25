terraform {
  backend "s3" {
    bucket         = "terraform-tfstate-cloud-tech-halo-qa"
    key            = "state/terraform-state.tfstate"
    region         = "ap-south-1"
    encrypt        = true
    dynamodb_table = "surgemail-terraform-backend"
  }
}