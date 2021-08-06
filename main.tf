provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "test2" {
    ami           = "ami-0a12b6f54cdcb8114"
    instance_type = "t2.micro"
    availability_zone = "us-west-2"
}