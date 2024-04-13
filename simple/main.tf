terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region = "eu-west-2"
}

locals {
  key_pair = "kenyiz_pem"
}

resource "aws_instance" "app_server" {
  count                  = 2
  ami                    = "ami-0b9932f4918a00c4f"
  instance_type          = var.instance_type
  key_name               = local.key_pair
  vpc_security_group_ids = [data.aws_security_group.selected.id]

  tags = {
    Name = "KenyizInstance-${count.index}"
  }
}

# import {
#   to = aws_instance.app_server
#   id = "i-0c43f303e9e7ae1d6"
# }