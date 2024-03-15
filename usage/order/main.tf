terraform {
  required_providers {
    customs3 = {
      source = "hashicorp.com/edu/customs3"
    }
  }
}

provider "customs3" {
  region     = "us-east-1"
  access_key = ""
  secret_key = ""
}

data "customs3_buckets" "example" {}

output "all_buckets" {
  value = data.customs3_buckets.example
}