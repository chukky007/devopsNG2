terraform {
  required_providers {
    aws = {
      source = "hashicorp/aws"
      version = "3.59.0"
    }
  }
}

provider "aws" {
  # Configuration options
  region = "us-east-1"
  access_key = var.access_key
  secret_key = var.secret_key
}

resource "aws_instance" "my-fleet" {
  count = 20

  ami = var.ami 
  instance_type = var.instance_type

  tags = {
    "Name" = "first-swarm-${count.index}"
  }
}