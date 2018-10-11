# Create a ansible instance with Amazon Linux AMI 2018.03.0 (HVM) on an
# t2.micro node with an AWS Tag naming it "Jenkin-CI-server"

resource "aws_instance" "jenkins" {
  ami           = "${var.jenkins_ami}"
  instance_type = "${var.jenkins_instance_type}"
  key_name = "${var.jenkins_key_name}"

  tags {
    Name = "Jenkins-CI-server"
  }
}

