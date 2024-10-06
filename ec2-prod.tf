resource "aws_instance" "web-1" {
  ami                         = "ami-0866a3c8686eaeeba"
  availability_zone           = "us-east-1a"
  instance_type               = "t2.micro"
  key_name                    = "SecOps-Key"
  subnet_id                   = aws_subnet.public.id
  vpc_security_group_ids      = ["${aws_security_group.allow_all.id}"]
  associate_public_ip_address = true
  tags = {
    Name       = "Prod-Server"
    Env        = "Prod"
    Owner      = "sai"
    CostCenter = "ABCD"
  }
}
