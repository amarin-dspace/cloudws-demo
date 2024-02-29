variable "name" {
  description = "Name of object"
  type = string
  default = "dynamic-aws-creds-operator" 
}

variable "region" {
  description = "AWS region"
  type = string
  default = "eu-central-1" 
}

variable "path" {
  description = "Path to Terrafrom state file"
  type = string
  default = "../vault-admin-workspace/terraform.tfstate" 
}

variable "ttl" {
  description = "Time To Live"
  type = string
  default = "1" 
}
