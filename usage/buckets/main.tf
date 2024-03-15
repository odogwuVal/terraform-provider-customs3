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

resource "customs3_s3_bucket" "example" {
  buckets = [{
    name = "custom-bucket-2498759"
    tags = "custom"
  }]
}