variable "ami_id" {
    type = string
    description = "join devops ami id RHEL9"
    default = "ami-09c813fb71547fc4f"
}

variable "instance_type" {
  default = {
    dev = "t3.micro"
    prod = "t3.small"
  }
}

variable "sg_tags" {
  type = map(string)
  default = {
    Name = "allow_all"
    Purpose = "security to the instance"
  }
}

variable "sg_description" {
  type = string
  default = "Allow TLS inbound traffic and all outbound traffic"
}

variable "from_port" {
  default = 0
}

variable "to_port" {
  default = 0
}

variable "cidr_blocks" {
  type = list(string)
  default = [ "0.0.0.0/0" ]
}

variable "common_tags" {
  type = map(string)
  default = {
    Project = "roboshop"
    Terraform = "true"
  }
}

variable "project" {
    default = "roboshop"
}

variable "instances" {
    default = ["mongodb","redis"]
}

variable "sg_name" {
  default = "allow_all"
}