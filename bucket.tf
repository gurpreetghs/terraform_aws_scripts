resource "aws_s3_bucket" "preettfbkt5524" {
  bucket = "preettfbkt"

  tags = {
    Name        = "My bucket"
  }
}

resource "aws_s3_bucket_acl" "example" {
  bucket = aws_s3_bucket.preettfbkt5524.id
  acl    = "private"
}