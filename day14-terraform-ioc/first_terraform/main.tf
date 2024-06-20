terraform{
  backend "s3" {
    bucket         = "naineel-terraform-remote-state-bucket"
    key            = "global/s3/terraform.tfstate"
    region         = "us-east-1"
    dynamodb_table = "terraform-remote-state-locking"
    encrypt        = true
  }
  
  required_providers{
    aws = {
      source = "hashicorp/aws"
      version = "~> 5.0"
    }
  }
}

#Configuring the aws providers
provider "aws" {
  region = "ap-south-1"
  #zone = "aps1-az1"
}

#Creating a new EC2 instance
resource "aws_instance" "terraformed-ec2" {
  ami = "ami-0f58b397bc5c1f2e8" #ubuntu 24.04
  instance_type = "t2.micro"
  key_name = "home-kv"
  security_groups = ["launch-wizard-4"]
  
  tags = {
    Name = "Terraformed-EC2"
  }
}