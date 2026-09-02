provider "aws" {
  region = var.region
}

resource "aws_instance" "myec2" {
  ami = var.myami
  instance_type = local.instance_type
  key_name = var.key_name
  vpc_security_group_ids = [var.mysg]
  tags = {
    Name = var.project_name
  }
} 
