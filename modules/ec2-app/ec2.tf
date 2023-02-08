# look for exisiting latest awm machine image - provided by aws - can also be self
provider "aws" {
  region = var.region
}

data "aws_ami" "windows" {
  most_recent = true

  filter {
    name   = "name"
    values = ["${var.windows_server_name}"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }
  owners = ["801119661308"] # Canonical
}

resource "aws_instance" "windows_ec2" {
  count                  = var.instance_count
  ami                    = data.aws_ami.windows.id
  instance_type          = var.instance_type
  subnet_id              = data.aws_subnet.existing.id
  vpc_security_group_ids = [aws_security_group.allow_tls.id]

  root_block_device {
    volume_size = var.root_volum
  }
  tags = {
    Name = "${var.instance_name_prefix}-${count.index}"
  }
  credit_specification {
    cpu_credits = "unlimited"
  }
}