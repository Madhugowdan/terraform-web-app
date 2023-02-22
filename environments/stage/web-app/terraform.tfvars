region              = "eu-west-1"
windows_server_name = "ec2-windows-ami-dot-Net-app"
ami_owner           = "667794773791"

instance_count       = 1
instance_type        = "t3.medium"
instance_name_prefix = "windows_ec2"
sg_name              = "sg_web_app"
ebs_device_name      = "/dev/sdh"
vpc_name             = "Int-app-WebservicePolicy-private"
sg_ports_ingress     = [443, 3386, 8080]
sg_ports_egress      = [443, 3386, 8080]
sg_protocal          = "tcp"
root_volum           = 40
subnet_name_1        = "intranet-0"
subnet_name_2        = "intranet-1"

