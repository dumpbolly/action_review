# Specify the provider and access details

provider "aws" {
  
}

# Create an S3 bucket
resource "aws_s3_bucket" "udabucket" {
  bucket = "cicd-terraform-demo-bucket2343434434"

  tags = {
    Name        = "CICD test bucket"
    Environment = "Dev"
  }
}

# Create an EC2 instance
resource "aws_instance" "ec2_instance" {
  ami           = "ami-071226ecf16aa7d96"
  instance_type = "t2.micro"

  tags = {
    Name = "CICD test instance"
  }
}
