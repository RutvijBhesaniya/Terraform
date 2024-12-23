resource "aws_instance" "terraform-demo" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.terraformkey.key_name
  vpc_security_group_ids = [aws_security_group.terraform_security_group.id]

  tags = {
    Name = var.aws_instance_tags
  }

  user_data = file("${path.module}/script.sh")
}


