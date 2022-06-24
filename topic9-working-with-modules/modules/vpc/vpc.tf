resource "aws_vpc" "myvpc" {
  cidr_block       = "${var.vpc_cidr}"
  tags = {
	Name = "${var.vpc_name}"
  }
}

resource "aws_internet_gateway" "myigw" {
  vpc_id = "${aws_vpc.myvpc.id}"
  tags = {
	Name = "${var.igw_name}"
  }
}

resource "aws_route_table" "myroute" {
  vpc_id = "${aws_vpc.myvpc.id}"

  route {
    cidr_block = "0.0.0.0/0"
    gateway_id = "${aws_internet_gateway.myigw.id}"
  }
  tags = {
    Name = "${var.route_name}"
  }
}

resource "aws_subnet" "mysub1" {
  vpc_id     = "${aws_vpc.myvpc.id}"
  cidr_block = "${var.vpc_sub_cidr}"
  tags = {
    Name = "${var.sub_name}"
  }
}

resource "aws_route_table_association" "subassociation" {
  subnet_id      = "${aws_subnet.mysub1.id}"
  route_table_id = "${aws_route_table.myroute.id}"
}

resource "aws_security_group" "mysecgrp" {
  name        = "${var.sec_grp_name}"
  description = "Dvsbatch2 sec group"
  vpc_id      = "${aws_vpc.myvpc.id}"

  ingress {
    description      = "Allow everyone"
    from_port        = 0
    to_port          = 0
    protocol         = "tcp"
    cidr_blocks      = ["0.0.0.0/0"]
  }

  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
  tags = {
    Name = "${var.sec_grp_name}"
  }
}
