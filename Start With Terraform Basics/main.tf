
resource "aws_instance" "MyFirstInstnace" {
  ami           = "ami-0dd273d94ed0540c0"
  instance_type = "t2.micro"
}