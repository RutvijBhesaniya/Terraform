
resource "aws_key_pair" "terraformkey" {
  key_name   = var.key_name
  public_key = file("${path.module}/id_rsa.pub")

}
