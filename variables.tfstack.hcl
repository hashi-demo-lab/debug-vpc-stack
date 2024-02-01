variable "regions" {
  type = set(string)
}

variable "aws_identity_token_file" {
  type = string
}

variable "workload_idp_name" {
  type = string
  default = "tfstacks-workload-identity-provider"
}

variable "vpc_name" {
  type = string 
}

variable "vpc_cidr" {
  type = string
}
