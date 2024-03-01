terraform {

  required_version = ">= 1.1.7"

  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = ">= 3.72, < 5.0.0"

      # beginning with version 5.0 some arguments are removed from resource "aws_vpc".
    }
  }
}

