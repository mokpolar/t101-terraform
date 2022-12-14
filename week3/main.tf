provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_instance" "example" {
  ami           = "ami-078296f82eb463377"
  instance_type = "t2.micro"
  tags = {
    Name = "t101-week3"
  }
}

terraform {
  backend "s3" {
    bucket = "mokpolar-t101study-tfstate-week3"
    key    = "workspaces-default/terraform.tfstate"
    region = "ap-northeast-1"
    dynamodb_table = "terraform-locks-week3"
  }
}