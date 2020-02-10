#----------Storage/main.tf---------------

#Create random id
resource "random_id" "bucket_id" {
  byte_length = 2
}

#Create Bucket
resource "aws_s3_bucket" "terraform_bucket"{
  bucket = "${var.project_name}-${random_id.bucket_id.dec}"
  acl = "private"

  force_destroy = true
  tags = {
    Name = "terraform_bucket"
  }
}