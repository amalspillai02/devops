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
  region  = "ap-southeast-1"
}

resource "aws_instance" "app_server" {
  ami           = "ami-0afc7fe9be84307e4"
  instance_type = "t2.micro"
  key_name="new"
  security_groups=["my-new-sg"]

  tags = {
    Name = "Devops-task-server1"
  }
}

