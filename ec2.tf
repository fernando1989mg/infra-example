data "aws_ami" "amzn-linux-2023-ami" {
  most_recent = true
  owners      = ["amazon"]

  filter {
    name   = "name"
    values = ["al2023-ami-2023.*-x86_64"]
  }
}

resource "aws_instance" "instance" {
  ami           = data.aws_ami.amzn-linux-2023-ami.id
  instance_type = "t2.micro"

  tags = {
    Name = "tf-example"
  }
}