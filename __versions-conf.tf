############################################
# version of terraform and providers
############################################
terraform {
  cloud {
    organization = "schan-test"

    workspaces {
      name = "testing-migrate-state"
    }
  }
}

# terraform {
#   required_version = ">= 1.2.0, < 2.0.0"
#   # required_version = "~> 1.2.0"

#   required_providers {
#     aws = "~> 4.4.0"
#     # random = {
#     #   source  = "hashicorp/random"
#     #   version = "3.4.3"
#     # }

#   }

#   # uncomment if you use s3 for backend
#   backend "s3" {}
# }

############################################
# AWS Provider Configuration
############################################
provider "aws" {
  region  = var.aws_region
  # profile = var.aws_profile

  ignore_tags {
    key_prefixes = ["kubernetes.io", "k8s.io"]
  }

}
