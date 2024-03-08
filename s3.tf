# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket
resource "aws_s3_bucket" "example" {
  bucket = var.s3-bucket-name

  timeouts {
    create = "3m"
    delete = "3m"
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_ownership_controls
resource "aws_s3_bucket_ownership_controls" "ownership" {
  bucket = aws_s3_bucket.example.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_acl
resource "aws_s3_bucket_acl" "acl" {
  depends_on = [aws_s3_bucket_ownership_controls.ownership]
  bucket = aws_s3_bucket.example.id
  acl    = "private"
}

# https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/s3_bucket_public_access_block
resource "aws_s3_bucket_public_access_block" "demo" {
  bucket = aws_s3_bucket.example.id
  block_public_acls       = var.s3-block-public_acls
  block_public_policy     = var.s3-block-public_policy
  ignore_public_acls      = var.s3-ignore-public_acls
  restrict_public_buckets = var.s3-restrict-public_buckets
}

# Uncomment lines below if you want to upload files to S3 bucket using TF
#resource "aws_s3_bucket_object" "object1" {
#  for_each = fileset("uploads/", "*")
#  bucket = aws_s3_bucket.example.id
#  key = each.value
#  source = "uploads/${each.value}"
#}

