provider "aws" {
    region = "us-west-2"
    access_key = "AKIAZWLOCLWWOUGHUKBF"
    secret_key = "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"
}

resource "aws_instance" "firstinstance" {
    ami = "ami-094125af156557ca2"
    instance_type = "t2.micro"

    tags = {
    Name = "terraform"
  }
}
