

resource "aws_instance" "vm1" {
  ami           = "ami-0be9cb9f67c8dabd6"
  instance_type = "t3.micro"
  key_name      = "tf-key"

  tags = {
    Name = "tf-server"
  }

}
