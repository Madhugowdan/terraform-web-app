
terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "4.51.0"
    }
  }
}

provider "aws" {
  region = var.region
}

module "tf-state" {
  source              = "../../../modules/s3-bucket"
  bucket_name         = var.bucket_name
  dynamodb_table_name = var.dynamodb_table_name
}
