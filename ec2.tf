#Ec2 Instance
resource "aws_instance" "test_env_ec2" {
  ami                         = "ami-00fa32593b478ad6e"
  instance_type               = var.instance_type
#  key_name                    = var.key_pair_name
  security_groups             = ["${aws_security_group.security.id}"]
  associate_public_ip_address = true
  subnet_id                   = aws_subnet.subnet.id
  user_data = file("userdata.sh")
  tags = {
    Name = "Test-with-user-data-new"
  }
}