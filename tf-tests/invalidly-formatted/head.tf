provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "foo" {
  instance_type = "t1.2xlarge"
}