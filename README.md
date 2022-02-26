# tfmod_vpc_rt

Terraform module to create VPC routing table in AWS

## Variables

``` terraform
# name: the name of the VPC routing table
# block: the block to route via your GW
variable "vpc_rt_example" { default = "example" }

igw_id: The ID of the gateway you want to route the trafic
vpc_id: The ID of the VPC
```

## Dependency

VPC <https://github.com/virsas/tfmod_vpc>
IGW <https://github.com/virsas/tfmod_vpc_igw>

## Terraform example

``` terraform
######################
# VPC RT variables
######################
variable "vpc_rt_default" { default =  { name = "DefaultRoutingTable", block = "0.0.0.0/0" }

######################
# VPC RT
######################
module "vpc_rt" {
  source = "github.com/virsas/tfmod_vpc_rt"
  vpc_id  = module.vpc_main.id
  igw_id  = module.vpc_igw.id
  rt = var.vpc_rt_default
}
```
