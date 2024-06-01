#-----------------
#General Variables
#-----------------
variable "availability_zone" {
  description = "Availability Zones for the Subnet"
  type        = string
  default = "ap-south-1a"
}

variable "aws_region"{
  description = "region"
  type = string
  default = "ap-south-1"
}

#------------------
#Key Pair Variables
#------------------
variable "key_pair_name" {
  description = "Key Pair for ssh access to instance"
  type        = string
  default = "tfkey"
}

variable "file_name" {
  description = "Name of the key pair file"
  type        = string
  default = "myfile"
}

#------------------
#Instance Variables
#------------------
variable "instance_type" {
  description = "Instance Type"
  type        = string
  default = "t3.micro"
}
variable "instance_tag" {
  description = "Tag(s) for Instance(s)"
  type        = list(string)
  default = ["test-name"]
}
variable "ec2_instance_name" {
  type        = string
  description = "The name to give the instance."
  default = "new-ec2-instance"
}

#----------------
#Subnet Variables
#----------------
variable "cidr_block" {
  description = "CIDR Block"
  type        = string
  default =  "172.31.0.0/16"
}

variable "force_destroy" {
  description = "Force destroy the bucket"
  type = bool
  default = false
}