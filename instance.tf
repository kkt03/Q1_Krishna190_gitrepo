resource "aws_instance" "Q2_instance" {
  ami = var.U22_ami
  instance_type = "t3.micro"
  tags = {
    Name = var.instance_name
  }
  vpc_security_group_ids = [aws_security_group.Q2_sg.id]
  user_data = file("${path.module}/nginx_script.sh")
  key_name = var.key_name
  root_block_device {
    volume_size = 30
    volume_type = "gp3"
  }
}