aws_region = "eu-west-3"


cidr_block = "10.0.0.0/16"
# vpc_tags = "my-vpc"
subnet_cidr_block = "10.0.0.0/24"

public_subnet_cidr = "10.0.0.0/24"
# public_subnet_tags = "pb_subnet"
private_subnet1_cidr = "10.0.48.0/24"
# private_subnet1_tags = "pvt_subnet1"
private_subnet2_cidr = "10.0.128.0/24"
private_subnet2_tags = "pvt_subnet2"
pvt_sg_tags = "private-sg"
pb_sg_tags = "public-sg"
pb_subnet_AZ   = "eu-west-3a"
pvt_subnet1_AZ = "eu-west-3b"
pvt_subnet2_AZ = "eu-west-3c"
ami            = "ami-0afd55c0c8a52973a"
#master_tags = "master"
master_tags = {
  Name  = "master",
  Owner = "bhanu",
}
node1_tags = {
  Name  = "db_Node1",
  Owner = "bhnau",
}
node2_tags = {
  Name  = "db_Node2",
  Owner = "bhanu",
}

#node1_tags = "db_Node1"
#node2_tags = "db_Node2"
NAT_tags = "pri_natgw"
igw_tags = "pub_igw"
private_routeTable_tags = "pri_rt"
public_routeTable_tags = "pub_rt"

key_name  = "paris"
