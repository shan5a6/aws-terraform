resource "aws_instance" "myec2" {
  ami           = "${var.ami_id}"
  instance_type = "${var.ec2_size}"
  key_name 		= "${var.ec2_key}"
  vpc_security_group_ids = ["${aws_security_group.mysecgrp.id}"]
  subnet_id		= "${aws_subnet.mysub1.id}"

  tags = {
    Name = "${var.ec2_name}"
  }
}
