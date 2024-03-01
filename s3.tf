resource "aws_s3_bucket" "example" {
   bucket = "wsdemo-s3"
}

resource "aws_s3_bucket_ownership_controls" "ownership" {
  bucket = aws_s3_bucket.example.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

resource "aws_s3_bucket_acl" "acl" {
  depends_on = [aws_s3_bucket_ownership_controls.ownership]
  bucket = aws_s3_bucket.example.id
  acl    = "private"
}

resource "aws_s3_bucket_public_access_block" "demo" {
  bucket = aws_s3_bucket.example.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}

# Uncomment if you want to upload files to S3 bucket using TF
#resource "aws_s3_bucket_object" "object1" {
#  for_each = fileset("uploads/", "*")
#  bucket = aws_s3_bucket.example-bucket.id
#  key = each.value
#  source = "uploads/${each.value}"
#}

