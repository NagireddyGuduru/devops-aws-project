variable "qa_servers_ami" {
  type = "map"

  default = {
    us-west-2  = "ami-a0cfeed8"
    ap-south-1 = "ami-00b6a8a2bd28daf19"
  }
}

variable "count" {
  default = 2
}

provider "aws" {
  region = "${var.region}"
}

variable "region" {}