terraform {
  cloud {
    organization = "atTerraformCloud"

    workspaces {
      name = "TerraformCloud_CLI"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-west-2"
  access_key = "AKIAS6RVOBUNEM66XAVM"
  secret_key = "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"
}

resource "aws_instance" "aws-web" {
  ami           = "ami-04adeb9ef364bcb6a"
  instance_type = "t3.nano"

  tags = {
    Name = "@Cloud_Instance"
  }
}
