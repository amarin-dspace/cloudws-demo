# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "example_server" {
  ami           = "ami-0a23a9827c6dab833"
  instance_type = "t2.micro"
  #associate_public_ip_address = false

  tags = {
    Name = "WS-Demo"
  }
}
