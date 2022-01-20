provider "aws" {
  region ="us-east-1"
}

terraform {
  backend "s3" {
    bucket = "sarojshah"
    key = "saroj/terraform.tfstate"
    region = "us-east-1"
    
  }
}

resource "aws_instance" "ec2_instance" {
  ami = "ami-08e4e35cccc6189f4"
  instance_type = "t2.micro"
  tags = {
    Name = "saroj-tf"
  }
  
}
