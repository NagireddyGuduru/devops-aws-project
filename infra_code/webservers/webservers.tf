resource "aws_instance" "qaservers" {
  count         = "${var.count}"
  ami           = "${lookup(var.qa_servers_ami,var.region)}"
  instance_type = "t2.micro"

  tags {
    Name = "qa-server-${count.index+1}"
  }
}

output "ips" {
  value = "${aws_instance.qaservers.*.public_ip}"
}
