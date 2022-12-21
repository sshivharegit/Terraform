provider "aws" {
    region = "us-west-2"
    access_key = "AKIAZWLOCLWWOUGHUKBF"
    secret_key = "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"
}


resource "aws_instance" "myfirstinstance" {
  ami = "ami-094125af156557ca2"
  instance_type = "t2.micro"
    tags = {
    Name = "terraform"
  }
}


resource "aws_eip" "lb" {
  vpc = true
}

resource "aws_eip_association" "eip_assoc" {
  instance_id   = aws_instance.myfirstinstance.id
  allocation_id = aws_eip.lb.id
}


resource "aws_security_group" "allow_tls" {
  name        = "satyam-security-group"

  tags = {
    Name = "awssg"
  }

  ingress {
    from_port        = 443
    to_port          = 443
    protocol         = "tcp"
    cidr_blocks      = ["${aws_eip.lb.public_ip}/32"]
  }
}