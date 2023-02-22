# terraform-web-app

private-vpc : Int-app-WebservicePolicy-private > 10.14.204.224/27  > subnet:10.14.204.224/27 
public-vpc : Int-app-WebservicePolicy-public > 10.19.0.0/24 
IGW : Int-app-WebservicePolicy-Public 

privateSubnet-publicVpc-1   > 10.19.0.0/26
privateSubnet-publicVpc-2  > 10.19.0.64/26