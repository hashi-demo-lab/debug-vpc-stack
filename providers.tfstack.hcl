required_providers {
  aws = {
    source  = "hashicorp/aws"
    version = "~> 5.0"
  }

  time = {
    source = "hashicorp/time"
    version = "~> 0.1"
  }
  
  tls = {
    source = "hashicorp/tls"
    version = "~> 4.0"
  }

  local = {
    source = "hashicorp/local"
    version = "~> 2.4"
  }


}

provider "aws" "configurations" {
  for_each = var.regions

  config {
    region = each.value

    assume_role_with_web_identity {
      role_arn                = var.role_arn
      web_identity_token_file = var.aws_identity_token_file
    }
  }
}


provider "time" "this" {}
provider "tls" "this" {}
provider "local" "this" {}


