terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  region  = "ap-northeast-2"
}

resource "aws_instance" "ubuntu" {
  ami           = "ami-0ed11f3863410c386"
  instance_type = "t2.micro"

  tags = {
    Name = "Trraform_yunpro_github"
  }
}

