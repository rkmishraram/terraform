resource "aws_instance" "web-server" {
  ami           = data.aws_ami.amzlinux2.id
  instance_type = var.instance_type
  key_name = "terraform-key"
  user_data = "./user-data.sh"
  vpc_security_group_ids = [data.aws_security_group.my_sg_server_1.id]

  tags = {
    Name = "server-1"
  }
}