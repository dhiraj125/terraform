
data "aws_availability_zones" "available_zones" {}


resource "aws_instance" "MyFirstInstnace" {
  ami           = lookup(var.AMIS, var.AWS_REGION)
  instance_type = "t2.micro"
  availabilty_zone = data.aws_availability_zones.available_zones.name[0]
  
  tags = {
    Name = "custom_instance"
  }

}