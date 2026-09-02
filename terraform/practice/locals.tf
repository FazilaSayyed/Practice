locals {
    key_name = "aws"
} 
locals {
    instance_type = "t3.micro"
} 
locals {
   vpc_cidr = "10.0.0.0/16"
} 

locals {
   pvt_sub_cidr = "10.0.1.0/24"
} 
locals {
   pub_sub_cidr = "10.0.2.0/24"
} 
locals {
   route = "10.0.0.0/10"
}