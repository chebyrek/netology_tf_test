provider "aws" {
  region = "eu-central-1"
}

resource "aws_instance" "test2" {
    ami           = "ami-03c10046b8071fff5"
    instance_type = "t2.micro"
    availability_zone = "eu-central-1"
}