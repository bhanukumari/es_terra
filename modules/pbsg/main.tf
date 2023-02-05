resource "aws_security_group" "public_security_group" {
  name        = var.sg_pb
  description = "security group"
  vpc_id      = var.vpc_id

  ingress {
    description = "Traffic from VPC"
    from_port   = var.https_port
    to_port     = var.https_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "Traffic from VPC"
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "port for os-dashboard"
    from_port   = var.es
    to_port     = var.es
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  
  ingress {
    description = "port for os-rest-api"
    from_port   = var.kibana
    to_port     = var.kibana
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }
  ingress {
    description = "port for logstash"
    from_port   = var.logstash
    to_port     = var.logstash
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  
  }
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = {
  Name = "pb_sg"

}
}
