# Just some custom values, modify to your liking

# AMI used for EC2 instance
ec2-image = "ami-0a23a9827c6dab833"

# EC2 instance type
ec2-flavor = "t2.micro"

# S3 bucket name
s3-bucket-name = "wsdemo-s3"

# Whether Amazon S3 should block public ACLs for this bucket
s3-block-public_acls = true

# Whether Amazon S3 should block public bucket policies for this bucket
s3-block-public_policy = true

# Whether Amazon S3 should ignore public ACLs for this bucket
s3-ignore-public_acls = true

# Whether Amazon S3 should restrict public bucket policies for this bucket
s3-restrict-public_buckets = true
