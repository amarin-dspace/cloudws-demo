resource "aws_s3_bucket" "example-bucket" {
   bucket = "wsdemo-s3"
   acl = "private"  
}
