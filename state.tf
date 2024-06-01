terraform {
  backend "s3" {
    bucket  = "devopsnxt-assignment-state-file"
    key     = "terraform.tfstate"
    region  = "ap-south-1"
  }
}
