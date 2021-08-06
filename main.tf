provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "test2" {
    ami           = "ami-083ac7c7ecf9bb9b0"
    instance_type = "t2.micro"
}