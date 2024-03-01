variable "region" {
  description = "AWS region"
  type = string
  default = "eu-central-1" 
}

variable "path" {
  description = "Path to Terrafrom state file"
  type = string
  default = "./terraform.tfstate" 
}

variable "ttl" {
  description = "Time To Live"
  type = string
  default = "1" 
}
