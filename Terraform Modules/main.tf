module "aws-ec2-instance" {
  source = "github.com/terraform-aws-modules/terraform-aws-ec2-instance.git"

  name = "EC2_Created_Thru_Modules"
  ami = "ami-0721c9af7b9b75114"
  instance_type = "t2.micro"
  subnet_id = "subnet-1309b96b"
  tags = {
    Terraform   = "true"
    Environment = "dev"
    }
}