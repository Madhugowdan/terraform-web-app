region               = "eu-west-1"
windows_server_name  = "Windows_Server-2019-English-Full-Base-*"
instance_count       = 4
instance_type        = "t3.medium"
instance_name_prefix = "windows_ec2"
sg_name              = "sg_web_app"
ebs_device_name      = "/dev/sdh"
vpc_name             = "Int-app-WebservicePolicy-Private"
ebs_size             = 100
sg_ports_ingress     = [443, 8080]
sg_ports_egress      = [443, 8080]
sg_protocal          = "tcp"
root_volum           = 50
subnet_name_1        = "intranet-0"
subnet_name_2        = "intranet-1"
