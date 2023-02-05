variable "sg_pb" {
  type        = string
  description = "public security group"
  default     = "public-sg"
}
variable "https_port" {
  type        = string
  description = "TCP port for https"
  default     = "443"
}
variable "ssh_port" {
  type        = string
  description = "TCP port for ssh"
  default     = "22"
}
variable "kibana" {
  type        = string
  description = "kibana"
  default     = "5601"
}

variable "es" {
  type        = string
  description = "TCP port for elasticsearch"
  default     = "9200"
}
variable "logstash" {
  type        = string
  description = "TCP port for logstash"
  default     = "5000"
}


# variable "pb_sg_tags" {}
variable "vpc_id" {}

