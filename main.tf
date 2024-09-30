terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

  backend "s3" {
    bucket = "gothicrazielsbucket01"
    key    = "terraform.tfstate"
    region = "eu-west-2"
  }
}

provider "aws" {
  region = "eu-west-2" # London region
}

resource "aws_s3_bucket" "terraform_state" {
  bucket = "gothicrazielsbucket01"

  lifecycle {
    prevent_destroy = false
  }
}

resource "aws_s3_bucket_versioning" "terraform_state" {
  bucket = aws_s3_bucket.terraform_state.id

  versioning_configuration {
    status = "Enabled"
  }
}

resource "aws_instance" "example_instance" {
  ami           = "ami-0b0315b28716929af" # Bitnami image for Amazon Linux 2 in eu-west-2
  instance_type = "t2.micro"

  tags = {
    Name = "Example Instance"
  }

