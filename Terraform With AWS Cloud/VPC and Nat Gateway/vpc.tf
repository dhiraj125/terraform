resource "aws_vpc" "custom-tf-vpc" {
  cidr_block       = "10.0.0.0/16"
  instance_tenancy = "default"
  enable_dns_support   = "true"
  enable_dns_hostnames = "true"
  enable_classiclink   = "false"

  tags = {
    Name = "custom-tf-vpc"
  }
}

resource "aws_subnet" "public-subnet-1" {
  vpc_id     = aws_vpc.custom-tf-vpc.id
  cidr_block = "10.0.1.0/24"
  availability_zone = "us-west-2a"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "public-subnet-1"
  }
}

resource "aws_subnet" "public-subnet-2" {
  vpc_id     = aws_vpc.custom-tf-vpc.id
  cidr_block = "10.0.2.0/24"
  availability_zone = "us-west-2b"
  map_public_ip_on_launch = "true"

  tags = {
    Name = "public-subnet-2"
  }
}

resource "aws_subnet" "public-subnet-3" {
  vpc_id     = aws_vpc.custom-tf-vpc.id
  cidr_block = "10.0.3.0/24"
  availability_zone = "us-west-2c"
  map_public_ip_on_launch = "true"
  tags = {
    Name = "public-subnet-3"
  }
}

resource "aws_subnet" "private-subnet-1" {
  vpc_id     = aws_vpc.custom-tf-vpc.id
  cidr_block = "10.0.4.0/24"
  availability_zone = "us-west-2a"
  map_public_ip_on_launch = "false"
  tags = {
    Name = "private-subnet-1"
  }
}

resource "aws_subnet" "private-subnet-2" {
  vpc_id     = aws_vpc.custom-tf-vpc.id
  cidr_block = "10.0.5.0/24"
  availability_zone = "us-west-2b"
  map_public_ip_on_launch = "false"

  tags = {
    Name = "private-subnet-2"
  }
}

resource "aws_subnet" "private-subnet-3" {
  vpc_id     = aws_vpc.custom-tf-vpc.id
  cidr_block = "10.0.6.0/24"
  availability_zone = "us-west-2c"
  map_public_ip_on_launch = "false"
  tags = {
    Name = "private-subnet-3"
  }
}

resource "aws_internet_gateway" "custom-internet-gw" {
  vpc_id = aws_vpc.custom-tf-vpc.id

  tags = {
    Name = "custom-internet-gw"
  }
}

resource "aws_route_table" "custom-routetable" {
  vpc_id = aws_vpc.custom-tf-vpc.id

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = aws_internet_gateway.custom-internet-gw.id
  }

  tags = {
    Name = "custom-routetable"
  }
}

resource "aws_route_table_association" "custom-rta-public-subnet-1" {
  subnet_id      = aws_subnet.public-subnet-1.id
  route_table_id = aws_route_table.custom-routetable.id
}

resource "aws_route_table_association" "custom-rta-public-subnet-2" {
  subnet_id      = aws_subnet.public-subnet-2.id
  route_table_id = aws_route_table.custom-routetable.id
}

resource "aws_route_table_association" "custom-rta-public-subnet-3" {
  subnet_id      = aws_subnet.public-subnet-3.id
  route_table_id = aws_route_table.custom-routetable.id
}