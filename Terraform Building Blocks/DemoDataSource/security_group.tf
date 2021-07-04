data "aws_ip_ranges" "us_west_ip_ranges" {
    regions=["us-west-1","us-west-2"]
    services =["ec2"]
}

resource "aws_security_group" "sg-custom-security-group" {
    name="sg-custom-security-group"
    ingress {
        from_port = "443"
        to_port = "443"
        protocol = "tcp"
        cidr_blocks = data.aws_ip_ranges.us_west_ip_ranges.cidr_blocks
    }
  
}
