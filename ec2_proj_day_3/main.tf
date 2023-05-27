terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "4.67.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-west-2"
  access_key = "AKIAS6RVOBUNEM66XAVM"
  secret_key = "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"
}

resource "aws_instance" "aws-lin-web" {
  ami           = "ami-04adeb9ef364bcb6a"
  instance_type = "t3.nano"

  tags = {
    Name = "@EC2_Inst"
  }
}
