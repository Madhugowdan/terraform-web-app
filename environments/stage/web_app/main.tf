
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

terraform {
  backend "s3" {
    bucket         = "app-webservice-github-workflow-terraform-tfstate-v1"
    key            = "ec2-tfstate/terraform.tfstate"
    region         = "eu-west-1"
    dynamodb_table = "terraform-state-locking-s3-tfstate-v1"
  }
}

module "ec2-complete" {
  source = "../../../modules/ec2-app/"

  region               = var.region
  windows_server_name  = var.windows_server_name
  instance_count       = var.instance_count
  instance_type        = var.instance_type
  instance_name_prefix = var.instance_name_prefix
  sg_name              = var.sg_name
  ebs_device_name      = var.ebs_device_name
  vpc_name             = var.vpc_name
  ebs_size             = var.ebs_size
  sg_ports_ingress     = var.sg_ports_ingress
  sg_ports_egress      = var.sg_ports_egress
  sg_protocal          = var.sg_protocal
  root_volum           = var.root_volum
  subnet_name_1        = var.subnet_name_1
  subnet_name_2        = var.subnet_name_2

}