#Ec2 Instance
resource "aws_instance" "ec2_instance" {
  ami                         = "ami-00fa32593b478ad6e"
  instance_type               = var.instance_type
  security_groups             = [aws_security_group.security.id]
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.subnet.id
  user_data = file("userdata.sh")
  tags = {
    Name = "DevopsNxt-EC2-Instance"
  }
}