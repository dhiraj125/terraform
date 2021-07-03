resource "aws_instance" "MyFirstInstnace" {
  ami           = lookup(var.AMIs, var.AWS_Region)
  instance_type = "t2.micro"
  tags = {
      Name = "Instance created using Variable"
  }

  security_groups = "${var.Security_Group}"
}