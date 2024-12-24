resource "aws_instance" "terraform-demo" {
  ami                    = var.ami
  instance_type          = var.instance_type
  key_name               = aws_key_pair.terraformkey.key_name
  vpc_security_group_ids = [aws_security_group.terraform_security_group.id]

  tags = {
    Name = var.aws_instance_tags
  }

  user_data = file("${path.module}/script.sh")


  #---------------------------- file ---------------------------------------------------#
  provisioner "file" {
    source      = "/home/yudiz/Desktop/Terraform/aws-instance/dummy.txt" # Local file
    destination = "/home/ubuntu/dumb"                                    # EC2 path

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("${path.module}/id_rsa") # Ensure this is the correct private key file
      host        = self.public_ip
    }
  }

  provisioner "file" {
    content     = "This is Terraform from content" # Local file
    destination = "/home/ubuntu/dumb"              # EC2 path

    connection {
      type        = "ssh"
      user        = "ubuntu"
      private_key = file("${path.module}/id_rsa") # Ensure this is the correct private key file
      host        = self.public_ip
    }
  }

  #---------------------------- file ---------------------------------------------------#

  #---------------------------- local-exec ------------jenkins---------------------------------------#

  provisioner "local-exec" {
    working_dir = "/home/ubuntu"
    command     = "echo ${self.public_ip} > mypublic_ip.txt"
  }

  provisioner "local-exec" {
    interpreter = [
      "/usr/bin/python3", "-c"
    ]
    command = "print ('Hello World')"
  }


}




