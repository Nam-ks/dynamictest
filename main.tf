terraform {
  cloud {
    organization = "tf-cn"

	workspaces {
  	name = "dynamictest"
	}
  }
  required_providers {
	aws = {
  	source  = "hashicorp/aws"
  	version = ">= 3.73.0"
	}
  }
}

provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_vpc" "main" {
  cidr_block = "10.15.0.0/16"
}