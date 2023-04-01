terraform {
required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.60.0"
    }
  }

backend "s3" {
    bucket = "my-terraform-george"
    key    = "terraform.tfstate"
    region = "us-east-1"
    profile = "terraform"
  }
}


provider "aws" {
  # Configuration options
  region = "us-east-1"
  profile = "terraform"
}

resource "aws_ebs_volume" "volume" {
  availability_zone = "us-east-1e"
  size = 12
  type = "gp2"

}
