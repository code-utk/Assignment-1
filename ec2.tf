resource "aws_instance" "ec2" {
  ami                    = var.ami
  instance_type          = var.instance_type
  subnet_id              = aws_subnet.main_subnet.id
  key_name               = "ssh"
  vpc_security_group_ids = [aws_security_group.default.id]

  root_block_device {
    volume_type           = "gp2"
    volume_size           = var.vol_size
    delete_on_termination = true
  }

  tags = {
    "Name" = "Assignment-1"
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
