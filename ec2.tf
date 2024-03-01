# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/instance
resource "aws_instance" "example_server" {
  ami           = var.ec2-image
  instance_type = var.ec2-flavor
  #associate_public_ip_address = false

  tags = {
    Name = "WS-Demo"
  }

  timeouts {
    create = "3m"
    delete = "3m"
  }
}

