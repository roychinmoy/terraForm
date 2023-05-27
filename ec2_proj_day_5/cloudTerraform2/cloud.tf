terraform {
  backend "s3" {
    bucket = "ansible-terraform-bucket0045"
    key    = "path/tfstate"
    region = "us-west-2"
  }
}

provider "aws" {
  # Configuration options
  region = var.region
}
