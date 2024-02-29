resource "aws_s3_bucket" "example-bucket" {
   bucket = "wsdemo-s3"
   acl = "private"  
}

resource "aws_s3_bucket_object" "object1" {
  for_each = fileset("uploads/", "*")
  bucket = aws_s3_bucket.example-bucket.id
  key = each.value
  source = "uploads/${each.value}"
}

resource "aws_s3_bucket_public_access_block" "app" {
  bucket = aws_s3_bucket.example-bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}
