provider "aws" {
  region = "us-west-2"
}

data "aws_ami" "ubuntu" {
    most_recent = true

    filter {
        name   = "name"
        values = ["ubuntu/images/hvm-ssd/ubuntu-hirsute-21.04-amd64-server-*"]
    }

    owners = ["099720109477"] # Canonical
}


resource "aws_instance" "test2" {
    for_each = toset(["1","2"])
    ami           = "${data.aws_ami.ubuntu.id}"
    instance_type = "t2.micro"
    availability_zone = "us-west-2"
}