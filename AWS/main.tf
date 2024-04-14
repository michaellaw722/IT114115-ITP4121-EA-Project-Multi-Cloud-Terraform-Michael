resource "aws_vpc" "Cloud_Project" {
  cidr_block = "172.0.0.0/16"
}

resource "aws_subnet" "Public_Subnet1a" {
  vpc_id            = aws_vpc.Cloud_Project.id
  cidr_block        = "172.0.1.0/24"
  availability_zone = "ap-east-1a"
}

resource "aws_subnet" "Public_Subnet1b" {
  vpc_id            = aws_vpc.Cloud_Project.id
  cidr_block        = "172.0.2.0/24"
  availability_zone = "ap-east-1b"
}

resource "aws_subnet" "Private_Subnet1a" {
  vpc_id            = aws_vpc.Cloud_Project.id
  cidr_block        = "172.0.3.0/24"
  availability_zone = "ap-east-1a"
}

resource "aws_subnet" "Private_Subnet1b" {
  vpc_id            = aws_vpc.Cloud_Project.id
  cidr_block        = "172.0.4.0/24"
  availability_zone = "ap-east-1b"
}