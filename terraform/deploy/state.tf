# Terraform state location
terraform {
  required_version = "=1.0.10"
  backend "s3" {
    bucket = "terraform-eu-west-2-shdsvcs_account-state"
    key    = "<terraform state file key is given as command line argument depends on the env>"
    region = "eu-west-2"
  }
}

provider "aws" {
  region = "eu-west-2"
}