# Create a ansible instance with Ubuntu 14.04 on an
# t2.micro node with an AWS Tag naming it "ansible-controll-machine"

resource "aws_instance" "ansible" {
  ami           = "${var.ansible_ami}"
  instance_type = "${var.ansible_instance_type}"
  key_name = "${var.ansible_key_name}"

  tags {
    Name = "ansible-controll-machine"
  }
}

