module "vpc_module"{
    source= "../module_vpc"
}

module "ec2_module" {
  source        = "../module_ec2"
  ami_id        = "ami-02eb7a4783e7e9317"
  instance_type = "t3a.medium"
  instance_count         = 1
#   vpc_id = vpc_module.t
#   subnet_id= ""
}
