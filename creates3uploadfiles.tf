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
resource "aws_s3_bucket_object" "object" {

  bucket = aws_s3_bucket.preettfbkt5524.id

  key    = "files.txt"
  acl    = "private" 
  source = "dummy.txt"

}
resource "aws_s3_bucket_object" "object1" {
bucket = aws_s3_bucket.preettfbkt5524.id
for_each = fileset("1.txt", "2.txt")
key = each.value
source = "${each.value}"
}