resource "aws_instance" "myec2" {
  ami = "ami-0aba19e56f3eaec05"
  instance_type = "t3.micro "
  key_name = "aws.pem"
  vpc_security_group_ids = ["sg-0172a65f910111ff6"]
   
}
