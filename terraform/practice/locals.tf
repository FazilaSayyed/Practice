locals {
    key_name = "id-rsa"
} 
locals {
    instance_type = "id-rsa"
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