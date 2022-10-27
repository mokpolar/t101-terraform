provider "aws" {
  region  = "ap-northeast-2"
}

resource "aws_vpc" "mokpolar-vpc" {
  cidr_block       = "10.10.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true

  tags = {
    Name = "t101-study"
  }
}

resource "aws_subnet" "mokpolar-subnet1" {
  vpc_id     = aws_vpc.mokpolar-vpc.id
  cidr_block = "10.10.1.0/24"

  availability_zone = "ap-northeast-2a"

  tags = {
    Name = "t101-subnet1"
  }
}

resource "aws_subnet" "mokpolar-subnet2" {
  vpc_id     = aws_vpc.mokpolar-vpc.id
  cidr_block = "10.10.2.0/24"

  availability_zone = "ap-northeast-2c"

  tags = {
    Name = "t101-subnet2"
  }
}


resource "aws_internet_gateway" "mokpolar-igw" {
  vpc_id = aws_vpc.mokpolar-vpc.id

  tags = {
    Name = "t101-igw"
  }
}

resource "aws_route_table" "mokpolar-rt" {
  vpc_id = aws_vpc.mokpolar-vpc.id

  tags = {
    Name = "t101-rt"
  }
}

resource "aws_route_table_association" "mokpolar-rtassociation1" {
  subnet_id      = aws_subnet.mokpolar-subnet1.id
  route_table_id = aws_route_table.mokpolar-rt.id
}

resource "aws_route_table_association" "mokpolar-rtassociation2" {
  subnet_id      = aws_subnet.mokpolar-subnet2.id
  route_table_id = aws_route_table.mokpolar-rt.id
}

resource "aws_route" "mydefaultroute" {
  route_table_id         = aws_route_table.mokpolar-rt.id
  destination_cidr_block = "0.0.0.0/0"
  gateway_id             = aws_internet_gateway.mokpolar-igw.id
}

