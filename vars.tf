variable "aws_region" {}


variable "cidr_block" {}

variable "subnet_cidr_block" {}

variable "AZ" {
  description = "value of the subnet AZ"
  type        = string
  default     = "us-east-2a"
}

variable "vpc_id" {
  default     = "aws_vpc.my_vpc.id"
  type        = string
  description = "VPC ID for  vpc"
}
variable "vpc_tags" {
  default     = {}
  type        = map(string)
  description = "tags for  vpc"
}
variable "public_subnet_cidr" {
  type        = string
  description = "CIDR block for subnet"
  default     = ""
}
variable "public_subnet_tags" {
  default     = {}
  description = "tags for  subnet"
  type        = map(string)
}
variable "pb_subnet_AZ" {
  default = {}
}
variable "private_subnet1_cidr" {
  type        = string
  description = "CIDR block for subnet1"
  default     = ""
}
variable "private_subnet1_tags" {
  default     = {}
  description = "tags for  subnet1"
  type        = map(string)
}
variable "private_subnet2_cidr" {
  type        = string
  description = "CIDR block for subnet2"
  default     = ""
}
variable "private_subnet2_tags" {}
variable "pvt_subnet1_AZ" {
  default = {}
}
variable "pvt_subnet2_AZ" {
  default = {}
}
variable "sg_pvt" {
  type        = string
  description = "private security group"
  default     = "pvt-sg"
}
variable "sg_pb" {
  type        = string
  description = "public security group"
  default     = "public-sg"
}
variable "https_port" {
  type        = string
  description = "hhps port"
  default     = "443"
}
variable "ssh_port" {
  type        = string
  description = "TCP port for ssh"
  default     = "22"
}
variable "kibna" {
  type        = string
  description = "TCP port for kibana"
  default     = "5601"
}

variable "es" {
  type        = string
  description = "TCP port for es"
  default     = "9200"
}
variable "logstash" {
  type        = string
  description = "TCP port for logstash"
  default     = "5000"

}
variable "master_tags" {
  type        = map(string)
  description = "tags for  master instance"
  default     = {}
}
variable "node1_tags" {
  type        = map(string)
  description = "tags for  db-node1 instance"
  default     = {}
}
variable "node2_tags" {
  type        = map(string)
  description = "tags for  db-node2 instance"
  default     = {}
}


variable "pvt_sg_tags" {}
variable "pb_sg_tags" {}
variable "private_routeTable_tags" {}

variable "public_routeTable_tags" {}

variable "NAT_tags" {}

variable "igw_tags" {}
variable "ami" {}
# variable "master_tags" {}

# variable "node1_tags" {}

# variable "node2_tags" {}

variable "key_name" {}


