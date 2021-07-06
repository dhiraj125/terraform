

resource "aws_instance" "MyFirstInstnace" {
  ami           = "ami-0352d5a37fb4f603f"
  instance_type = "t2.micro"
  
  provisioner "local-exec" {
    command = "echo aws_instance.MyFirstInstnace.private_ip >> my_private_ip.txt"
  }
  tags = {
    Name = "custom_instance"
  }

}


output "my_public_ip" {
  value = aws_instance.MyFirstInstnace.public_ip
}