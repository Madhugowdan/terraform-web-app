
resource "aws_security_group" "allow_tls" {
  name        = var.sg_name
  description = "Allow TLS inbound and outbound traffic"
  vpc_id      = data.aws_vpc.existing.id

  dynamic "ingress" {
    for_each = var.sg_ports_ingress
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = var.sg_protocal
      cidr_blocks = [data.aws_vpc.existing.cidr_block]
    }
  }

  dynamic "egress" {
    for_each = var.sg_ports_egress
    iterator = port
    content {
      from_port   = port.value
      to_port     = port.value
      protocol    = var.sg_protocal
      cidr_blocks = [data.aws_vpc.existing.cidr_block]
    }
  }
  tags = {
    # Name = "allow_tls"
    Name = "${var.instance_name_prefix}-${var.sg_name}"
  }
}
