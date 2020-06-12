resource "aws_subnet" "main_subnet" {
  vpc_id                  = aws_vpc.main_vpc.id
  cidr_block              = var.cidr_subnet
  map_public_ip_on_launch = true

  tags = {
    Name = "main_subnet"
  }
}
