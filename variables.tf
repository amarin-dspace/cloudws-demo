variable "ec2-image" {
  description = "AMI used for EC2 instance"
  type = string
}

variable "ec2-flavor" {
  description = "EC2 instance type"
  type = string
}

variable "s3-bucket-name" {
  description = "S3 bucket name; globally unique"
  type = string
}

variable "s3-block-public_acls" {
  description = "Whether Amazon S3 should block public ACLs for this bucket"
  type = bool
  default = false
}

variable "s3-block-public_policy" {
  description = "Whether Amazon S3 should block public bucket policies for this bucket"
  type = bool
  default = false
}

variable "s3-ignore-public_acls" {
  description = "Whether Amazon S3 should ignore public ACLs for this bucket"
  type = bool
  default = false
}

variable "s3-restrict-public_buckets" {
  description = "Whether Amazon S3 should restrict public bucket policies for this bucket"
  type = bool
  default = false
}

