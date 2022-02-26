resource "aws_route_table" "router" {
    vpc_id = var.vpc_id
    
    route {
        cidr_block = var.rt.block 
        gateway_id = var.igw_id
    }
    
    tags = {
        Name = var.rt.name
    }
}

resource "aws_main_route_table_association" "router" {
  vpc_id = var.vpc_id
  route_table_id = aws_route_table.router.id
}