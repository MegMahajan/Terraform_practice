terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.0"
    }
  }

required_version  = ">= 1.2.0"
}

provider "aws" {
    region = "us-east-1"
}

resource "aws_instance" "my_ec2_instance"{
        count = 2
        ami = "ami-08c40ec9ead489470"
        instance_type = "t2.micro"
        tags = {
             Name = "TerraformBatch-instance"
        }
}

output "aws_public_ip"{
        value= aws_instance.my_ec2_instance[*].public_ip
}

resource "aws_s3_bucket" "mybucket" {
  bucket = "shaarvilmybucket"
}
