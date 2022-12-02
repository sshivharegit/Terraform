provider "aws" {
    region = "us-west-2"
    access_key = ""
    secret_key = ""
}

resource "aws_instance" "firstinstance" {
    ami = "ami-094125af156557ca2"
    instance_type = "t2.micro"

    tags = {
    Name = "terraform"
  }
}
