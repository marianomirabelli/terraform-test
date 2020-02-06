output "bucketname" {
  value = "${aws_s3_bucket.terraform_bucket.id}"
}