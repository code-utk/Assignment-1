resource "aws_instance" "ec2" {
  ami                    = var.ami
  instance_type          = "t2.micro"
  subnet_id              = aws_subnet.main_subnet.id
  vpc_security_group_ids = [ aws_security_group.default.id ]
  key_name               = "First Instance EC2"

  root_block_device {
    volume_type           = "gp2"
    volume_size           = 10
    delete_on_termination = true
  }

  tags = {
    "Name" = "Assignment 1"
  }
}
resource "aws_security_group" "default" {
  vpc_id = aws_vpc.main_vpc.id

  ingress {
    protocol  = -1
    self      = true
    from_port = 0
    to_port   = 0
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}
