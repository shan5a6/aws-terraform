output "myprivaip" {
	value = "${aws_instance.myec2.private_ip}"
}
