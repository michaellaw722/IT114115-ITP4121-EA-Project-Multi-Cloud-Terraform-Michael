resource "aws_vpc" "EKSProject" {
  cidr_block = "172.0.0.0/16"
  
  tags = {
    Name = "EKSProject"
  }
}

resource "aws_subnet" "Public_Subnet1a" {
  vpc_id            = aws_vpc.EKSProject.id
  cidr_block        = "172.0.1.0/24"
  availability_zone = "ap-east-1a"
  
  tags = {
    Name = "Public_Subnet1a"
  }
}

resource "aws_subnet" "Public_Subnet1b" {
  vpc_id            = aws_vpc.EKSProject.id
  cidr_block        = "172.0.2.0/24"
  availability_zone = "ap-east-1b"
  
  tags = {
    Name = "Public_Subnet1b"
  }
}

resource "aws_subnet" "Private_Subnet1a" {
  vpc_id            = aws_vpc.EKSProject.id
  cidr_block        = "172.0.3.0/24"
  availability_zone = "ap-east-1a"
  
  tags = {
    Name = "Private_Subnet1a"
  }
}

resource "aws_subnet" "Private_Subnet1b" {
  vpc_id            = aws_vpc.EKSProject.id
  cidr_block        = "172.0.4.0/24"
  availability_zone = "ap-east-1b"
  
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