variable "region" {
  type    = string
  default = "eu-west-1"
}


variable "windows_server_name" {
  description = " define windows server name to be matched "
  type        = string
  default     = "Windows_Server-2019-English-Full-Base-*"
}

variable "instance_count" {
  description = " define the count of number of ec2 instance to be deployed"
  type        = number
  default     = 1
}

variable "instance_type" {
  type    = string
  default = "t2.micro"
}


variable "instance_name_prefix" {
  type    = string
  default = "windows_ec2"
}
variable "vpc_name" {
  type    = string
  default = "Int-app-WebservicePolicy-Private"
}


variable "sg_name" {
  type    = string
  default = "sg_web_app"
}

variable "subnet_name_1" {
  type    = string
  default = "intranet-0"
}
variable "subnet_name_2" {
  type    = string
  default = "intranet-1"
}


variable "ebs_size" {
  type    = number
  default = 100
}
variable "ebs_device_name" {
  type    = string
  default = "/dev/sdh"
}

variable "sg_ports_ingress" {
  type    = list(number)
  default = [443, 3386]
}


variable "sg_ports_egress" {
  type    = list(number)
  default = [443, 3386]
}

variable "root_volum" {
  type    = number
  default = 40
}

variable "sg_protocal" {
  type    = string
  default = "tcp"
}


variable "bucket_name" {
  type    = string
  default = "app-webservice-github-workflow-terraform-tfstate-v1"
}

variable "key_name" {
  type    = string
  default = "ec2-tfstate/terraform.tfstate"
}


variable "db_table_name" {
  type    = string
  default = "terraform-state-locking-s3-tfstate"
}