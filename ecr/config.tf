terraform {
  backend "s3" {
    bucket = "aidea-terraform-state"
    key = "next/state/ecr/terraform.tfstate"
    region = "ap-northeast-1"
    encrypt = true
  }
}

provider "aws" {
  region = "ap-northeast-1"
}
