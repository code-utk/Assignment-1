variable "aws_profile" {
  default = "superhero"
}
variable "aws_region" {
  default = "us-west-2"
}

variable "vpc_cidr" {
  default = "10.20.0.0/16"
}
variable "cidr_subnet" {
  default = "10.20.1.0/24"
}
variable "ami" {
  default = "ami-003634241a8fcdec0"
}
