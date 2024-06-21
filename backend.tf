terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      #version = "~> 3.0" # Specify the desired version
    }
  }
}

terraform {
  backend "s3" {
    bucket = "s3-bucket-store-statefile"
    key = "terraform.tfstatefile"
    region = "us-east-1"
    dynamodb_table = "basic-dynamo-table"
  }
}