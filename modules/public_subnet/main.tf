resource "aws_subnet" "public_subnet" {
  vpc_id                  = var.vpc_id
  cidr_block              = var.public_subnet_cidr_block
  availability_zone       = var.AZ
  tags                    = {
Name = "public_subnet"
  map_public_ip_on_launch = true
}
}
resource "aws_route_table_association" "a" {
  subnet_id      = aws_subnet.public_subnet.id
  route_table_id = var.public_routeTable_id
}
