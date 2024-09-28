provider "aws" {

  region = "eu-west-2" # London region

}

resource "aws_s3_bucket" "terraform_today" {

  bucket = “gothicrazielsbucket01”

}

resource "aws_s3_bucket" “gothicrazielsbucket01” {

  bucket = “gothicrazielsbucket01”

}

terraform {

  backend "s3" {

    # Replace this with your bucket name!

    bucket         = "gothicrazielsbucket01”

    region         = "eu-west-2"

  }

}

resource "aws_instance" “CHANGE” {

  ami           = "ami-0b0315b28716929af" # Replace with the desired Amazon Linux 2 AMI for eu-west-2 (bitnami image)

  instance_type = "t2.micro"  # Change to the desired instance type

  tags = {

    Name = “CHANGE” 

}

}

