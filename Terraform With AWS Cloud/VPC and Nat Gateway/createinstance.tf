
resource "aws_key_pair" "levelup_key" {
    key_name = "levelup_key"
    public_key = file(var.PATH_TO_PUBLIC_KEY)
}

resource "aws_instance" "MyFirstInstnace" {
  ami           = "ami-0352d5a37fb4f603f"
  instance_type = "t2.micro"
  key_name      = aws_key_pair.levelup_key.key_name
  vpc_security_group_ids = [aws_security_group.custom_sg.id]
  subnet_id = aws_subnet.public-subnet-2.id

  tags = {
    Name = "custom_instance"
  }

}