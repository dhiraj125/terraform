
resource "aws_key_pair" "levelup_key" {
    key_name = "levelup_key"
    public_key = file(var.PATH_TO_PUBLIC_KEY)
}

resource "aws_instance" "MyFirstInstnace" {
  ami           = "ami-0721c9af7b9b75114"
  instance_type = "t2.micro"
  availability_zone = "us-west-2a"
  key_name      = aws_key_pair.levelup_key.key_name
  
  tags = {
    Name = "custom_instance"
  }

}

resource "aws_ebs_volume" "custom-ebs" {
  availability_zone = "us-west-2a"
  size              = 40
  type = "gp2"

  tags = {
    Name = "Secondary Volume Disk"
  }
}

resource "aws_volume_attachment" "ebs_att" {
  device_name = "/dev/xvdh"
  volume_id   = aws_ebs_volume.custom-ebs.id
  instance_id = aws_instance.MyFirstInstnace.id
}