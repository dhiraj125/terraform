resource "aws_eip" "custom-eip" {
  vpc = true
}

resource "aws_nat_gateway" "levelup-nat-gw" {
  allocation_id = aws_eip.custom-eip.id
  subnet_id     = aws_subnet.public-subnet-1.id
  depends_on    = [aws_internet_gateway.custom-internet-gw]
}

resource "aws_route_table" "levelup-private" {
  vpc_id = aws_vpc.custom-tf-vpc.id
  route {
    cidr_block     = "0.0.0.0/0"
    nat_gateway_id = aws_nat_gateway.levelup-nat-gw.id
  }

  tags = {
    Name = "levelup-private"
  }
}

resource "aws_route_table_association" "level-private-1-a" {
  subnet_id      = aws_subnet.private-subnet-1.id
  route_table_id = aws_route_table.levelup-private.id
}

resource "aws_route_table_association" "level-private-1-b" {
  subnet_id      = aws_subnet.private-subnet-2.id
  route_table_id = aws_route_table.levelup-private.id
}

resource "aws_route_table_association" "level-private-1-c" {
  subnet_id      = aws_subnet.private-subnet-3.id
  route_table_id = aws_route_table.levelup-private.id
}