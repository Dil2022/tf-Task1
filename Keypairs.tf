resource "aws_key_pair" "key1" {
  key_name   = "key1"
  public_key = file("~/.ssh/id_rsa.pub")
}
