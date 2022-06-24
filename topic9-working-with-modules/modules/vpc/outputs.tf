output "myvpcid" {
	value = "${aws_vpc.myvpc.id}"
}
output "myigwid" {
	value = "${aws_internet_gateway.myigw.id}"
}
output "mysubid" {
	value = "${aws_subnet.mysub1.id}"
}
output "mysecgrpid" {
	value = "${aws_security_group.mysecgrp.id}"
}
