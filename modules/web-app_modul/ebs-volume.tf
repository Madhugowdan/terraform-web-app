
resource "aws_ebs_volume" "ebs_volume_for_windows_ec2" {
  count             = var.instance_count
  availability_zone = data.aws_subnet.existing.availability_zone
  size              = var.ebs_size
  depends_on        = [aws_instance.windows_ec2]

  tags = {
    Name = "${var.instance_name_prefix}-${count.index}"
  }

}
resource "aws_volume_attachment" "ebs_att" {
  count       = var.instance_count
  device_name = var.ebs_device_name
  volume_id   = aws_ebs_volume.ebs_volume_for_windows_ec2[count.index].id
  instance_id = aws_instance.windows_ec2[count.index].id

}