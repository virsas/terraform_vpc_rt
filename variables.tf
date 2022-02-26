variable "vpc_id" { default = 0 }
variable "igw_id" { default = 0 }
variable "rt" { default = { name = "example", block = "0.0.0.0/0" } }