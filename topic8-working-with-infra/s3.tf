resource "aws_s3_bucket" "mys3" {
  bucket = "${var.bucketname}"
  tags = "${var.tags}"
}
