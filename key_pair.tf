#resource "aws_key_pair" "tf_key" {
#  key_name   = var.key_pair_name
#  public_key = file("~/.ssh/id_rsa.pub")
#}
#
#resource "tls_private_key" "rsa" {
#  algorithm = "RSA"
#  rsa_bits  = 4096
#}
#
#
#
#resource "local_file" "tf_key" {
#  content  = tls_private_key.rsa.private_key_pem
#  filename = var.file_name
#
#}