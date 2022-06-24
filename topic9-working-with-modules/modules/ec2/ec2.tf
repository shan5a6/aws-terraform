resource "aws_instance" "myec2" {
  ami           = "${var.ami_id}"
  instance_type = "${var.ec2_size}"
  key_name              = "${var.ec2_key}"
  vpc_security_group_ids = ["${var.sec_grp_id}"]
  subnet_id             = "${var.sub_id}"

  tags = {
    Name = "${var.ec2_name}"
  }
}

