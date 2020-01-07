data "terraform_remote_state" "aws_iam" {
  backend = "s3"

  config = {
    bucket = "aidea-terraform-state"
    key = "next/state/iam/terraform.tfstate"
    region = "ap-northeast-1"
  }
}

data "terraform_remote_state" "vpc" {
  backend = "s3"

  config = {
    bucket = "aidea-terraform-state"
    key = "next/state/vpc/terraform.tfstate"
    region = "ap-northeast-1"
  }
}
