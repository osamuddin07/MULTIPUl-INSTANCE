provider "aws" {
  region = "ap-south-1"
}
resource "aws_instance" "linux-vm" {
  ami             = "ami-08e3b3155fc937a94"
  instance_type   = "t3.micro"
  key_name        = "Dev-Ops"
  security_groups = ["terraform-sg"]
  count           = 3
  tags = {
    Name = "Devops_vm-$ {count.index + 1}"
  }
}
