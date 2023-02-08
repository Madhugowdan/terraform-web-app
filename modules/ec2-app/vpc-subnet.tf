data "aws_vpc" "existing" {
  filter {
    name   = "tag:Name"
    values = ["${var.vpc_name}"]
  }
}
data "aws_subnet" "existing" {
  filter {
    name   = "tag:Name"
    values = ["${var.subnet_name_1}"]
  }
}
