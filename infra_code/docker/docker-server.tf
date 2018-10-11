# Create a docker instance with Amazon Linux AMI 2018.03.0 (HVM) on an
# t2.micro node with an AWS Tag naming it "docker-server"

resource "aws_instance" "docker" {
  ami           = "ami-a0cfeed8"
  instance_type = "t2.micro"
  key_name = "microscanner"

  tags {
    Name = "docker-server"
  }
}


