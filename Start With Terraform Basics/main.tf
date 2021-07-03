provider "aws" {
  region     = "us-west-2"
  access_key = "AKIAY5S26G73RPDPCANY"
  secret_key = "my-secret-key"
}

resource "aws_instance" "MyFirstInstnace" {
  ami           = "ami-0dd273d94ed0540c0"
  instance_type = "t2.micro"
}