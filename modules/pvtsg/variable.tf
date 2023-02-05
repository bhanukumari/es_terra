variable "vpc_id" {
  default     = ""
  type        = string
  description = "VPC ID for vpc"
}
variable "sg_pvt" {
  type        = string
  description = "private security group"
  default     = "pvt-sg"
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

variable "pvt_sg_tags" {
  default     = {}
  description = "Prvate Security group tags for"
  type        = map(string)
}
variable "cidr" {
  default     = {}
}
