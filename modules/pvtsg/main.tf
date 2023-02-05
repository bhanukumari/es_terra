resource "aws_security_group" "private_security_group" {
  name        = var.sg_pvt
  description = "security group"
  vpc_id      = var.vpc_id

  ingress {
    description = "Traffic from VPC"
    from_port   = var.https_port
    to_port     = var.https_port
    protocol    = "tcp"
    cidr_blocks = [var.cidr]
  }
  ingress {
    description = "Traffic from VPC"
    from_port   = var.ssh_port
    to_port     = var.ssh_port
    protocol    = "tcp"
    cidr_blocks = [var.cidr]
  }
   ingress {
    description = "port for kibana "
    from_port   = var.kibana
    to_port     = var.kibana
    protocol    = "tcp"
    cidr_blocks = [var.cidr]
  }
  ingress {
    description = "port for es"
    from_port   = var.es
    to_port     = var.es
    protocol    = "tcp"
    cidr_blocks = [var.cidr]
  }
  ingress {
    description = "port for logstash"
    from_port   = var.logstash
    to_port     = var.logstash
    protocol    = "tcp"
    cidr_blocks = [var.cidr]

  }
  
  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
    ipv6_cidr_blocks = ["::/0"]
  }

  tags = { 
Name = "pvt_sg"
}
}
