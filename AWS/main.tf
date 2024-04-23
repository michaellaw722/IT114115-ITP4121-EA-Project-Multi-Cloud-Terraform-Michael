provider "aws" {
  region      = "${var.region}"
}


resource "aws_vpc" "EKSProject" {
  cidr_block = "${var.vpc_cidr}"
  
  tags = {
    Name = "EKSProject"
  }
}

resource "aws_subnet" "Public_Subnet1a" {
  vpc_id            = aws_vpc.EKSProject.id
  cidr_block        = "${var.publicsubnet1a}"
  availability_zone = "${var.az1a}"
  
  tags = {
    Name = "Public_Subnet1a"
  }
}

resource "aws_subnet" "Public_Subnet1b" {
  vpc_id            = aws_vpc.EKSProject.id
  cidr_block        = "${var.publicsubnet1b}"
  availability_zone = "${var.az1b}"
  
  tags = {
    Name = "Public_Subnet1b"
  }
}

resource "aws_subnet" "Private_Subnet1a" {
  vpc_id            = aws_vpc.EKSProject.id
  cidr_block        = "${var.privatesubnet1a}"
  availability_zone = "${var.az1a}"
  
  tags = {
    Name = "Private_Subnet1a"
  }
}

resource "aws_subnet" "Private_Subnet1b" {
  vpc_id            = aws_vpc.EKSProject.id
  cidr_block        = "${var.privatesubnet1b}"
  availability_zone = "${var.az1b}"
  
  tags = {
    Name = "Private_Subnet1b"
  }
}


resource "aws_security_group" "EKS_SG" {
  name        = "EKS_SG"
  description = "Allow TLS inbound traffic and all outbound traffic"
  vpc_id      = aws_vpc.EKSProject.id

  tags = {
    Name = "EKS_SG"
  }
}


resource "aws_internet_gateway" "internet_gw" {
  vpc_id = aws_vpc.EKSProject.id

  tags = {
    Name = "Internet"
  }
}


resource "aws_nat_gateway" "nat_gw" {
  subnet_id     = aws_subnet.Public_Subnet1a.id
  allocation_id = aws_eip.eip1.id
  tags = {
    Name = "NATgw"
  }

  depends_on = [aws_internet_gateway.internet_gw]
}


resource "aws_eip" "eip1" {
  domain = "vpc"
  
  tags = {
    name = "az1-ip"
  }
} 
